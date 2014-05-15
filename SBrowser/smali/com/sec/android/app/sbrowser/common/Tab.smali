.class public Lcom/sec/android/app/sbrowser/common/Tab;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertBlockedPopupListener;
.implements Lcom/sec/android/app/sbrowser/common/TabThumbnailProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/Tab$TabHost;,
        Lcom/sec/android/app/sbrowser/common/Tab$TabState;,
        Lcom/sec/android/app/sbrowser/common/Tab$FindResultReceivedListener;,
        Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;,
        Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;,
        Lcom/sec/android/app/sbrowser/common/Tab$ThumbnailRequest;,
        Lcom/sec/android/app/sbrowser/common/Tab$FindMatchRectsListener;,
        Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;,
        Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;
    }
.end annotation


# static fields
.field private static final EDMTAG:Ljava/lang/String; = "EnterpriseDeviceManagerService"

.field private static final FAVICON_DIMENSION:I = 0x10

.field private static final INITIAL_PROGRESS:I = 0x5

.field public static final INVALID_RENDER_PROCESS_PID:I = -0x80000000

.field public static final INVALID_TAB_ID:I = -0x1

.field public static final IS_BITMAP_SAVED:Ljava/lang/String; = "isBitmapSaved"

.field static final KEY_CHECKER:J = 0x0L

.field private static final LOGTAG:Ljava/lang/String; = "Tab"

.field static final LOGV_ENABLED:Z = false

.field protected static final MAX_CONCURRENT_EXECUTORS:I = 0x1

.field public static final NO_PARENT_ID:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NTP_TAB_ID:I = -0x2

.field private static final PRINT_JOB_PREFIX:Ljava/lang/String; = "chrome://printjob/"

.field public static final SAVED_STATE_FILE_PREFIX:Ljava/lang/String; = "tab"

.field public static final SAVED_STATE_FILE_PREFIX_INCOGNITO:Ljava/lang/String; = "cryptonito"

.field private static final SEND_TOOLBAR_BITMAP_TO_ENGINE:I = 0x3e9

.field private static final SNAPSHOT_PREFIX:Ljava/lang/String; = "chrome://snapshot/"

.field public static final TAB_ID:Ljava/lang/String; = "tabId"

.field private static final TAG:Ljava/lang/String; = null

.field private static final THUMBNAIL_CAPTURE_DELAY:I = 0x1f4

.field private static final THUMBNAIL_H_PHONE:I = 0x48

.field private static final THUMBNAIL_H_PHONE2:I = 0x286

.field private static final THUMBNAIL_W_PHONE:I = 0x6c

.field private static final THUMBNAIL_W_PHONE2:I = 0x1da

.field private static mEngineNewTabLaunch:Z

.field private static mKey:Ljava/security/Key;

.field private static mWrappedKey:[B

.field private static sIncognitoKeyGenerator:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljavax/crypto/SecretKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bookmarkHandler:Landroid/os/Handler;

.field private captureBitmapOnLoadFinish:Z

.field private cfmsService:Landroid/os/ICustomFrequencyManager;

.field private isAccessibilityEnabled:Z

.field private isPageBookMarked:Z

.field public isPageLoadFinished:Z

.field private isSummaryAvailable:Z

.field public isnewwindowcreating:Z

.field private mActivity:Landroid/app/Activity;

.field private mActivityNativeWindow:Lorg/chromium/ui/WindowAndroid;

.field private mAppAssociatedWith:Ljava/lang/String;

.field private mBaseUrl:Ljava/lang/String;

.field mBookmarkType:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

.field private mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

.field private mCachedExtraThumbnail:Landroid/graphics/Bitmap;

.field private mCachedFavicon:Landroid/graphics/Bitmap;

.field private mCachedFaviconUrl:Ljava/lang/String;

.field private mCachedThumbnail:Landroid/graphics/Bitmap;

.field private mCategory:Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;

.field private mCategoryString:Ljava/lang/String;

.field mClientCertificateHandler:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

.field private mCloseContentsRunnable:Ljava/lang/Runnable;

.field private final mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

.field private mContentView:Lorg/chromium/content/browser/ContentView;

.field private mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

.field private mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

.field private mContext:Landroid/content/Context;

.field private mCrashTabView:Landroid/view/View;

.field private mDVFSCPUBooster:Landroid/os/DVFSHelper;

.field private mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDisableContentIntentsForTests:Z

.field private mDocumentHeight:I

.field private mDocumentId:I

.field private mDocumentWidth:I

.field private mErrorPage:Z

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mFavIcon:Landroid/graphics/Bitmap;

.field mFidoHandlerInstance:Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;

.field private mFindMatchRectsListener:Lcom/sec/android/app/sbrowser/common/Tab$FindMatchRectsListener;

.field private mFindResultReceivedListener:Lcom/sec/android/app/sbrowser/common/Tab$FindResultReceivedListener;

.field private mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

.field private mFullScreenRunnableFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mId:I

.field private final mIncognito:Z

.field private mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

.field private mInstanceIndex:I

.field private mInterceptNavigationDelegate:Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;

.field private mIsAssociatedToolbarDisplayed:Z

.field public mIsBookmarkedSite:Z

.field private mIsBookmarkedUrl:Z

.field private mIsHidden:Z

.field private mIsLoading:Z

.field private mIsNavigationToDifferentPage:Z

.field private mIsNewtabLauncedFromJS:Z

.field private mIsPageStartBitmap:Z

.field private mIsPageStarted:Z

.field private mIsReload:Z

.field private mIsTabStateDirty:Z

.field private mKillMe:Z

.field private mLastLoadedUrl:Ljava/lang/String;

.field private mLastShownTimestamp:J

.field private mLaunchType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

.field private mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

.field public mNetworkHandler:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

.field private mOpenerTabId:I

.field mPageFinishBitmapHandler:Landroid/os/Handler;

.field private mPageSummary:Ljava/lang/String;

.field private mPageTransitionType:I

.field private mParentId:I

.field private mParentIsIncognito:Z

.field private mPopupWebAlert:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

.field private mPrintBitmap:Landroid/graphics/Bitmap;

.field private mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

.field public mReaderScriptId:I

.field private mReadingListTitle:Ljava/lang/String;

.field private mReadingListUrl:Ljava/lang/String;

.field public mRecogScriptId:I

.field private mSBrowserProxyHandler:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

.field mSBrowserSmartcardWrapper:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

.field private mSavedState:[B

.field private mSbrContentViewClient:Lorg/samsung/content/sbrowser/SbrContentViewClient;

.field public mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

.field private mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

.field public mSbrWebLoginListener:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;

.field private mSetThumbnailRunnable:Ljava/lang/Runnable;

.field private mSmartDB:Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

.field mSmartcardIdenfier:Ljava/lang/Object;

.field private mSnapshotId:Ljava/lang/String;

.field private mSoftBmpMaxHeight:I

.field private mSummarizerReqId:I

.field mSupportedCPUCoreNum:[I

.field private mTabBridgeListener:Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;

.field private mTabCrashedInBackground:Z

.field private mTabHost:Lcom/sec/android/app/sbrowser/common/Tab$TabHost;

.field private mTabManagerFullBitmap:Landroid/graphics/Bitmap;

.field private mTabParentId:I

.field private mThumbHandler:Landroid/os/Handler;

.field private mThumbnailHeight:I

.field private mThumbnailHeight2:I

.field private mThumbnailRequest:I

.field public mThumbnailRunnable:Ljava/lang/Runnable;

.field private mThumbnailWidth:I

.field private mThumbnailWidth2:I

.field mThumnailAsyncTask:Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field mWebContentsDelegate:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

.field private mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

.field private mWidgetThumbnail:Landroid/graphics/Bitmap;

.field private mWidgetThumbnailSaveRnnable:Ljava/lang/Runnable;

.field private mWindowId:I

.field public multiwindow_update_available:Z

.field private myTTS:Landroid/speech/tts/TextToSpeech;

.field private popupstatus:Z

.field private prevParentWebContents:I

.field private sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

.field private ttspageloading:Z

.field private ttspageloadingsec:Z

.field final urlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

.field public whereBookmark:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/Tab;->mEngineNewTabLaunch:Z

    sput-object v1, Lcom/sec/android/app/sbrowser/common/Tab;->mKey:Ljava/security/Key;

    sput-object v1, Lcom/sec/android/app/sbrowser/common/Tab;->mWrappedKey:[B

    return-void
.end method

.method constructor <init>(ILcom/sec/android/app/sbrowser/common/Tab$TabHost;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;Lorg/chromium/ui/WindowAndroid;IZLcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;I)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsPageStartBitmap:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mKillMe:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->popupstatus:Z

    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->prevParentWebContents:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabParentId:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsNewtabLauncedFromJS:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumnailAsyncTask:Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsNavigationToDifferentPage:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->myTTS:Landroid/speech/tts/TextToSpeech;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->ttspageloading:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->ttspageloadingsec:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsAssociatedToolbarDisplayed:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isnewwindowcreating:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isPageLoadFinished:Z

    const/4 v6, -0x1

    iput v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSummarizerReqId:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsReload:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mErrorPage:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListUrl:Ljava/lang/String;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListTitle:Ljava/lang/String;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsBookmarkedUrl:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mFavIcon:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSmartDB:Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsHidden:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsTabStateDirty:Z

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLastShownTimestamp:J

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mNetworkHandler:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrWebLoginListener:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;

    const/4 v6, -0x1

    iput v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mParentId:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isAccessibilityEnabled:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->cfmsService:Landroid/os/ICustomFrequencyManager;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDVFSCPUBooster:Landroid/os/DVFSHelper;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSupportedCPUCoreNum:[I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mFindMatchRectsListener:Lcom/sec/android/app/sbrowser/common/Tab$FindMatchRectsListener;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSnapshotId:Ljava/lang/String;

    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDocumentId:I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserProxyHandler:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isPageBookMarked:Z

    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRequest:I

    new-instance v6, Lcom/sec/android/app/sbrowser/common/Tab$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/common/Tab$1;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRunnable:Ljava/lang/Runnable;

    new-instance v6, Lcom/sec/android/app/sbrowser/common/Tab$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/common/Tab$2;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabBridgeListener:Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;

    new-instance v6, Lcom/sec/android/app/sbrowser/common/Tab$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/common/Tab$3;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCloseContentsRunnable:Ljava/lang/Runnable;

    new-instance v6, Lcom/sec/android/app/sbrowser/common/Tab$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/common/Tab$4;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWidgetThumbnailSaveRnnable:Ljava/lang/Runnable;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsPageStarted:Z

    new-instance v6, Lcom/sec/android/app/sbrowser/common/Tab$17;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/common/Tab$17;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->bookmarkHandler:Landroid/os/Handler;

    new-instance v6, Lcom/sec/android/app/sbrowser/common/Tab$19;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/common/Tab$19;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPageFinishBitmapHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->captureBitmapOnLoadFinish:Z

    new-instance v6, Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-direct {v6, p5}, Lorg/samsung/chrome/browser/SbrTabBridge;-><init>(Lorg/chromium/ui/WindowAndroid;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getBackKeyPlaceHolder()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/sec/android/app/sbrowser/common/Tab;->mEngineNewTabLaunch:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsNewtabLauncedFromJS:Z

    const/4 v6, 0x0

    sput-boolean v6, Lcom/sec/android/app/sbrowser/common/Tab;->mEngineNewTabLaunch:Z

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabBridgeListener:Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;

    invoke-virtual {v6, v7}, Lorg/samsung/chrome/browser/SbrTabBridge;->setSbrTabBridgeListener(Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mKillMe:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivityNativeWindow:Lorg/chromium/ui/WindowAndroid;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    move-object v6, p3

    check-cast v6, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabHost:Lcom/sec/android/app/sbrowser/common/Tab$TabHost;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIncognito:Z

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLaunchType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mParentId:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mOpenerTabId:I

    move-object v6, p3

    check-cast v6, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInstanceIndex:I

    if-nez p6, :cond_1

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIncognito:Z

    invoke-static {v6}, Lorg/chromium/chrome/browser/ContentViewUtil;->createNativeWebContents(Z)I

    move-result p6

    :cond_1
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->prevParentWebContents:I

    new-instance v6, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/Tab$1;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsDelegate:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09021a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v6

    if-nez v6, :cond_6

    if-le v2, v3, :cond_5

    sub-int v6, v2, v4

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSoftBmpMaxHeight:I

    :goto_1
    new-instance v6, Lcom/sec/android/app/sbrowser/common/Tab$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/common/Tab$5;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbHandler:Landroid/os/Handler;

    new-instance v6, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    invoke-direct {v6, p3}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mNetworkHandler:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    if-lez p9, :cond_2

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mParentIsIncognito:Z

    :cond_2
    new-instance v6, Landroid/os/DVFSHelper;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    const/16 v8, 0xe

    invoke-direct {v6, v7, v8}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v6}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSupportedCPUCoreNum:[I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSupportedCPUCoreNum:[I

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    const-string v7, "CORE_NUM"

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSupportedCPUCoreNum:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :goto_2
    new-instance v6, Landroid/os/DVFSHelper;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    const/16 v8, 0xc

    invoke-direct {v6, v7, v8}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDVFSCPUBooster:Landroid/os/DVFSHelper;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDVFSCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v6}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDVFSCPUBooster:Landroid/os/DVFSHelper;

    const-string v7, "CPU"

    const/4 v8, 0x0

    aget v8, v1, v8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :goto_3
    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/common/Tab;->initHistoryThumbnailSize(Landroid/app/Activity;)V

    new-instance v6, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v9

    invoke-direct {v6, v7, p0, v8, v9}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Lcom/sec/android/app/sbrowser/common/Tab;Landroid/app/Activity;Lorg/chromium/content/browser/ContentView;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isSummaryAvailable:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPageSummary:Ljava/lang/String;

    new-instance v6, Lcom/sec/android/app/sbrowser/common/UrlHandler;

    invoke-direct {v6, p3}, Lcom/sec/android/app/sbrowser/common/UrlHandler;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->urlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->initContentViewClients()V

    move/from16 v0, p6

    invoke-direct {p0, p3, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->initContentView(Landroid/app/Activity;I)V

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/common/Tab;->finishInit(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    invoke-virtual {v6, v7}, Lorg/chromium/content/browser/ContentView;->setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrContentViewClient:Lorg/samsung/content/sbrowser/SbrContentViewClient;

    invoke-virtual {v6, v7}, Lorg/chromium/content/browser/ContentView;->setSbrContentViewClient(Lorg/samsung/content/sbrowser/SbrContentViewClient;)V

    sget-object v6, Lorg/chromium/content/browser/ContentViewCore;->mWebselectdialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    if-eqz v6, :cond_3

    sget-object v6, Lorg/chromium/content/browser/ContentViewCore;->mWebselectdialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->dismiss()V

    const/4 v6, 0x0

    sput-object v6, Lorg/chromium/content/browser/ContentViewCore;->mWebselectdialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    :cond_3
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserProxyHandler:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    return-void

    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsNewtabLauncedFromJS:Z

    goto/16 :goto_0

    :cond_5
    sub-int v6, v3, v4

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSoftBmpMaxHeight:I

    goto/16 :goto_1

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSoftBmpMaxHeight:I

    goto/16 :goto_1

    :cond_7
    const-string v6, "Tab"

    const-string v7, "mSupportedCPUCoreNum is null"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    const-string v6, "Tab"

    const-string v7, "cpuFreTable is null for CPU boosting"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method constructor <init>(ILcom/sec/android/app/sbrowser/common/Tab$TabHost;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;Lorg/chromium/ui/WindowAndroid;ZLcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;I)V
    .locals 10

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/common/Tab;-><init>(ILcom/sec/android/app/sbrowser/common/Tab$TabHost;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;Lorg/chromium/ui/WindowAndroid;IZLcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/Tab;->initContentView(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->showInternal()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab$TabHost;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabHost:Lcom/sec/android/app/sbrowser/common/Tab$TabHost;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLastLoadedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/sbrowser/common/Tab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyLoadProgress()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/common/Tab;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->canUpdateHistoryThumbnail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCloseContentsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/common/Tab;->mEngineNewTabLaunch:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInterceptNavigationDelegate:Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/sbrowser/common/Tab;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->prevParentWebContents:I

    return v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/sbrowser/common/Tab;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->prevParentWebContents:I

    return p1
.end method

.method static synthetic access$2600(Lcom/sec/android/app/sbrowser/common/Tab;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabParentId:I

    return v0
.end method

.method static synthetic access$2602(Lcom/sec/android/app/sbrowser/common/Tab;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabParentId:I

    return p1
.end method

.method static synthetic access$2702(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mKillMe:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/sec/android/app/sbrowser/common/Tab;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/common/Tab;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->shouldUpdateThumbnail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3002(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsTabStateDirty:Z

    return p1
.end method

.method static synthetic access$3076(Lcom/sec/android/app/sbrowser/common/Tab;I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsTabStateDirty:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsTabStateDirty:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyPageUrlChanged()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/app/sbrowser/common/Tab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->ttspageloading:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->ttspageloading:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/sec/android/app/sbrowser/common/Tab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->ttspageloadingsec:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->ttspageloadingsec:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->myTTS:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->myTTS:Landroid/speech/tts/TextToSpeech;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/sec/android/app/sbrowser/common/Tab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mErrorPage:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mErrorPage:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/sec/android/app/sbrowser/common/Tab;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyPageLoad(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab$FindResultReceivedListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mFindResultReceivedListener:Lcom/sec/android/app/sbrowser/common/Tab$FindResultReceivedListener;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/samsung/chrome/browser/SbrTabBridge;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mFavIcon:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->updatesearchEngineFavIcon(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->updateFavIconInDb()V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPopupWebAlert:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/infobar/WebAlert;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPopupWebAlert:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/sbrowser/common/Tab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->popupstatus:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/sec/android/app/sbrowser/common/Tab;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPageTransitionType:I

    return v0
.end method

.method static synthetic access$4502(Lcom/sec/android/app/sbrowser/common/Tab;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPageTransitionType:I

    return p1
.end method

.method static synthetic access$4600(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->handleSnapshotOrPrintJobUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/reader/ReaderDetection;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyPageTitleChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/common/Tab;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSoftBmpMaxHeight:I

    return v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getMainActivityStatus()Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/android/app/sbrowser/common/Tab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsHidden:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabCrashedInBackground:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->showCrashTabView()V

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyTabCrashed()V

    return-void
.end method

.method static synthetic access$5500(Lcom/sec/android/app/sbrowser/common/Tab;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyContextualActionBarStateChanged(Z)V

    return-void
.end method

.method static synthetic access$5602(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mAppAssociatedWith:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/Tab;->saveThumbnailInFile(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->updateHistoryThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/sec/android/app/sbrowser/common/Tab;ILandroid/graphics/Bitmap;Z)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/Tab;->saveFullScreenBitmap(ILandroid/graphics/Bitmap;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->addWidgetThumbnailInDB()V

    return-void
.end method

.method static synthetic access$6200(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSmartDB:Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;)Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSmartDB:Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;)Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCategory:Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCategoryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCategoryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6602(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsBookmarkedUrl:Z

    return p1
.end method

.method static synthetic access$6702(Lcom/sec/android/app/sbrowser/common/Tab;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRequest:I

    return p1
.end method

.method static synthetic access$6800(Lcom/sec/android/app/sbrowser/common/Tab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsReload:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsReload:Z

    return p1
.end method

.method static synthetic access$6902(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsPageStartBitmap:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->updateBookmarksThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$7002(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsNavigationToDifferentPage:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->checkIfUrlBookmarked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/os/DVFSHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->updateTitle()V

    return-void
.end method

.method static synthetic access$7400(Lcom/sec/android/app/sbrowser/common/Tab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->captureBitmapOnLoadFinish:Z

    return v0
.end method

.method static synthetic access$7402(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->captureBitmapOnLoadFinish:Z

    return p1
.end method

.method static synthetic access$7600()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/Tab;->triggerIncognitoKeyGeneration()V

    return-void
.end method

.method static synthetic access$7700(Lcom/sec/android/app/sbrowser/common/Tab;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyPageLoadFailed(I)V

    return-void
.end method

.method static synthetic access$7802(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsPageStarted:Z

    return p1
.end method

.method static synthetic access$7900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->bookmarkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/sec/android/app/sbrowser/common/Tab;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyPrintBitmap(Z)V

    return-void
.end method

.method static synthetic access$8100(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$8202(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedExtraThumbnail:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$8300(Lcom/sec/android/app/sbrowser/common/Tab;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->deleteBitmapFromFile(I)V

    return-void
.end method

.method static synthetic access$8400(Lcom/sec/android/app/sbrowser/common/Tab;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInstanceIndex:I

    return v0
.end method

.method static synthetic access$8500(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/common/Tab;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->destroyInternalForPreRender(Z)V

    return-void
.end method

.method private addWidgetThumbnailInDB()V
    .locals 11

    const-string v2, "Tab"

    const-string v3, "addWidgetThumbnailInDB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWidgetThumbnail:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWidgetThumbnail:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x3c

    invoke-virtual {v2, v3, v4, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->whereBookmark:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;->OperatorBookmark:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->whereBookmark:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;->Both:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    if-ne v2, v3, :cond_3

    :cond_2
    const/4 v8, 0x0

    sget-object v2, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v3, 0x1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "widget_url"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "is_opbookmark"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "widget_url"

    invoke-virtual {v10, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "widget_thumbnail"

    invoke-virtual {v10, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    sget-object v2, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->whereBookmark:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;->UserBookmark:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->whereBookmark:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;->Both:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    if-ne v2, v3, :cond_0

    :cond_4
    const/4 v8, 0x0

    sget-object v2, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "widget_url"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "is_opbookmark"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "widget_url"

    invoke-virtual {v10, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "widget_thumbnail"

    invoke-virtual {v10, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    sget-object v2, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_5
    :try_start_2
    const-string v2, "widget_thumbnail"

    invoke-virtual {v10, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    invoke-virtual {v2, v1, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    :cond_7
    :try_start_3
    const-string v2, "widget_thumbnail"

    invoke-virtual {v10, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    invoke-virtual {v2, v1, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2
.end method

.method private canUpdateHistoryThumbnail()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chrome://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getProgress()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLastLoadedUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/utilities/URLUtilities;->sameUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkIfUrlBookmarked(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/Tab$16;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab$16;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static createMockTab(IZ)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private deleteBitmapFromFile(I)V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_TAB_BITMAP_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Instance"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInstanceIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v3, "Tab"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pictureFileDir deletion "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_FULL_SCREEN_BITMAP_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Instance"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInstanceIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v3, "Tab"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pictureFileDir deletion "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static deleteStateFile(ILandroid/app/Activity;ZI)V
    .locals 1

    invoke-static {p2, p0, p3}, Lcom/sec/android/app/sbrowser/common/Tab;->getFilename(ZII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method private destroyContentView(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->getFavIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mFavIcon:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    :cond_3
    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS:destroying Tab Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ContentView ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0, v3}, Lorg/chromium/content/browser/ContentView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->removeContentViewReferences()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->destroy()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrDestroyWebContents(Z)V

    :cond_4
    return-void
.end method

.method private destroyInternal(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->releaseDashmode()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->destroyContentView(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrTabBridgeDestroy()V

    const-string v0, "Tab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Tab :: destroyInternal() :: making mSbrTabBridge NULL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    invoke-virtual {v0}, Lorg/chromium/content/browser/WebContentsObserverAndroid;->detachFromWebContents()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->destroy()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mClientCertificateHandler:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    if-eqz v0, :cond_3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mClientCertificateHandler:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserSmartcardWrapper:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserSmartcardWrapper:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSmartcardIdenfier:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->doStopLoading(Ljava/lang/Object;)V

    :cond_4
    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserSmartcardWrapper:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabCrashedInBackground:Z

    return-void
.end method

.method private destroyInternalForPreRender(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->releaseDashmode()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->destroyContentView(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrTabBridgeDestroy()V

    const-string v0, "Tab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Tab :: destroyInternal() :: making mSbrTabBridge NULL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    invoke-virtual {v0}, Lorg/chromium/content/browser/WebContentsObserverAndroid;->detachFromWebContents()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->destroy()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mClientCertificateHandler:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    if-eqz v0, :cond_3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mClientCertificateHandler:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserSmartcardWrapper:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserSmartcardWrapper:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSmartcardIdenfier:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->doStopLoading(Ljava/lang/Object;)V

    :cond_4
    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserSmartcardWrapper:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    :cond_5
    return-void
.end method

.method private dismissExtractModePopupIfNeeded()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsExtractModeEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->dismissExtractModePopup()V

    :cond_0
    return-void
.end method

.method private finishInit(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentView;->setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrContentViewClient:Lorg/samsung/content/sbrowser/SbrContentViewClient;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentView;->setSbrContentViewClient(Lorg/samsung/content/sbrowser/SbrContentViewClient;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabHost:Lcom/sec/android/app/sbrowser/common/Tab$TabHost;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab$TabHost;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentView;->setDownloadDelegate(Lorg/chromium/content/browser/ContentViewDownloadDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWindowId:I

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrSetWindowId(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Tab"

    const-string v1, "Resetting Tab_Crash_ state variable for  tab creation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->resetTabState()V

    goto :goto_0
.end method

.method private static getCipher(I)Ljavax/crypto/Cipher;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "AES/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/Tab;->getKey()Ljava/security/Key;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v3, "cipher"

    const-string v4, "Error in the cipher alogrithm"

    invoke-static {v3, v4, v1}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "cipher"

    const-string v4, "Wrong key to use in cipher"

    invoke-static {v3, v4, v1}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v3, "cipher"

    const-string v4, "Error in creating cipher instance"

    invoke-static {v3, v4, v1}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto :goto_0
.end method

.method public static getFilename(ZII)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cryptonito"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getKey()Ljava/security/Key;
    .locals 2

    sget-object v1, Lcom/sec/android/app/sbrowser/common/Tab;->mKey:Ljava/security/Key;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/Tab;->triggerIncognitoKeyGeneration()V

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/Tab;->sIncognitoKeyGenerator:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Key;

    sput-object v1, Lcom/sec/android/app/sbrowser/common/Tab;->mKey:Ljava/security/Key;

    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/sbrowser/common/Tab;->sIncognitoKeyGenerator:Ljava/util/concurrent/FutureTask;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/Tab;->mKey:Ljava/security/Key;

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getMainActivityStatus()Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMainActivityStatus()Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    move-result-object v0

    return-object v0
.end method

.method private getScaledFavicon(II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleSnapshotOrPrintJobUrl(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    const-string v3, "chrome://snapshot/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "chrome://snapshot/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "chrome://printjob/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "chrome://printjob/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    const/4 v2, 0x0

    :goto_2
    return v2

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private initContentView(Landroid/app/Activity;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivityNativeWindow:Lorg/chromium/ui/WindowAndroid;

    invoke-static {p1, p2, v3, v5}, Lorg/chromium/content/browser/ContentView;->newInstance(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;I)Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    invoke-virtual {v3, v4}, Lorg/chromium/content/browser/ContentView;->setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrContentViewClient:Lorg/samsung/content/sbrowser/SbrContentViewClient;

    invoke-virtual {v3, v4}, Lorg/chromium/content/browser/ContentView;->setSbrContentViewClient(Lorg/samsung/content/sbrowser/SbrContentViewClient;)V

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsAssociatedToolbarDisplayed:Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUtilityCheckForHideUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/UI;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->ShowToolBarManually()V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/UI;->checkUtilityConditionsForHideUrl()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3, v6, v5, v5}, Lorg/chromium/content/browser/ContentViewCore;->updateTopControlsState(ZZZ)V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabHost:Lcom/sec/android/app/sbrowser/common/Tab$TabHost;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/common/Tab$TabHost;->registerForContextMenu(Landroid/view/View;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    new-instance v4, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener;

    invoke-direct {v4, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lorg/chromium/content/browser/ContentView;->setDownloadDelegate(Lorg/chromium/content/browser/ContentViewDownloadDelegate;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsDelegate:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    iget v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v3, v4, v5, v6}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrInitWebContents(Lorg/chromium/content/browser/ContentViewCore;Lorg/samsung/chrome/browser/SbrWebContentsDelegateAndroid;I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v3}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrTabSetWindowId()V

    new-instance v3, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/Tab$1;)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->setInterceptNavigationDelegate(Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->onContentViewChanged()V

    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mClientCertificateHandler:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserSmartcardWrapper:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSmartcardIdenfier:Ljava/lang/Object;

    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3, v5, v6, v6}, Lorg/chromium/content/browser/ContentViewCore;->updateTopControlsState(ZZZ)V

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-direct {v3, p1, v4, p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;-><init>(Landroid/app/Activity;Lorg/chromium/content/browser/ContentView;Lcom/sec/android/app/sbrowser/common/Tab;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    goto :goto_1
.end method

.method private initContentViewClients()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/Tab$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/Tab$6;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrContentViewClient:Lorg/samsung/content/sbrowser/SbrContentViewClient;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/Tab$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/Tab$7;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    return-void
.end method

.method private initHistoryThumbnailSize(Landroid/app/Activity;)V
    .locals 5

    const/16 v2, 0x6c

    const/16 v1, 0x48

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    int-to-float v3, v2

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailWidth:I

    int-to-float v3, v1

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailHeight:I

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v3

    const-string v4, "enable-samsung-multiwindow"

    invoke-virtual {v3, v4}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->isPhoneMultiwindowEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/16 v3, 0x1da

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailWidth2:I

    const/16 v3, 0x286

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailHeight2:I

    :cond_1
    return-void
.end method

.method private isFrozen()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 9

    const/16 v1, 0x3a

    const-string v0, "com.google.android.marvin.talkback"

    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_accessibility_services"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    :cond_0
    move-object v2, v6

    invoke-virtual {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v7, "com.google.android.marvin.talkback"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private notifyContextualActionBarStateChanged(Z)V
    .locals 0

    return-void
.end method

.method private notifyFaviconHasChanged()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tabId"

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/UI;->setFavicon(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private notifyLoadProgress()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/UI;->updateLoadProgress(II)V

    return-void
.end method

.method private notifyPageLoad(I)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tabId"

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SBrowserMainActivityContextId"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "url"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastNotification(ILandroid/os/Bundle;)V

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->newTabPageReady(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->newTabPageReady(I)V

    :cond_1
    return-void

    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method private notifyPageLoadFailed(I)V
    .locals 3

    const-string v0, "APPLOGS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Page load Failed,mId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Errorcode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->onPageLoadFinished(ILcom/sec/android/app/sbrowser/common/Tab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->updateQuickAccessModeOnNativeFail()V

    return-void
.end method

.method private notifyPageTitleChanged()V
    .locals 0

    return-void
.end method

.method private notifyPageUrlChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->notifyPageUrlChanged(I)V

    return-void
.end method

.method private notifyPrintBegin(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->notifyPrintBegin(II)V

    return-void
.end method

.method private notifyPrintBitmap(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->notifyPrintBitmap(IZ)V

    return-void
.end method

.method private notifyPrintEnd()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->notifyPrintEnd()V

    return-void
.end method

.method private notifyTabCrashed()V
    .locals 0

    return-void
.end method

.method private notifyTabPrefetchCommitted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->notifyTabPrefetchCommitted(I)V

    return-void
.end method

.method private static openStateFile(Landroid/app/Activity;IZI)Ljava/io/InputStream;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-static {p2, p1, p3}, Lcom/sec/android/app/sbrowser/common/Tab;->getFilename(ZII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readState(ILandroid/app/Activity;I)Lcom/sec/android/app/sbrowser/common/Tab$TabState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, p2}, Lcom/sec/android/app/sbrowser/common/Tab;->openStateFile(Landroid/app/Activity;IZI)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->readState(Ljava/io/InputStream;Z)Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, p0, v2, p2}, Lcom/sec/android/app/sbrowser/common/Tab;->openStateFile(Landroid/app/Activity;IZI)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->readState(Ljava/io/InputStream;Z)Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readState(Ljava/io/InputStream;Z)Lcom/sec/android/app/sbrowser/common/Tab$TabState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object p0, v1

    :cond_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->readStateInternal(Ljava/io/InputStream;Z)Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    move-result-object v2

    return-object v2
.end method

.method private static readStateInternal(Ljava/io/InputStream;Z)Lcom/sec/android/app/sbrowser/common/Tab$TabState;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    :goto_0
    const/4 v2, 0x0

    return-object v3

    :cond_0
    :try_start_1
    new-instance v3, Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/common/Tab$TabState;-><init>()V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->lastShownTimestamp:J

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v4, v1, [B

    iput-object v4, v3, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->state:[B

    iget-object v4, v3, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->state:[B

    invoke-virtual {v2, v4}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, v3, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->parentId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->openerAppId:Ljava/lang/String;

    const-string v4, ""

    iget-object v5, v3, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->openerAppId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->openerAppId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    :try_start_3
    iput-boolean p1, v3, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->isIncognito:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v4, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v5, "Failed to read opener app id state from tab state"

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    const/4 v2, 0x0

    throw v4
.end method

.method private reloadTabIfNecessary()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS: reloadTabIfNecessary - mTabCrashedInBackground ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabCrashedInBackground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabCrashedInBackground:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v1, "APPLOGS: reloadTabIfCrashed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v1, "APPLOGS: reloadTabIfCrashed reload"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->reload()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabCrashedInBackground:Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v1, "APPLOGS: reloadTabIfCrashed loadURL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeContentViewReferences()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->removeContentViewFromCVHolder(Lorg/chromium/content/browser/ContentView;)V

    return-void
.end method

.method private removeCrashTabViewIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCrashTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCrashTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCrashTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentView;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCrashTabView:Landroid/view/View;

    return-void
.end method

.method public static restoreEncryptionKey(Landroid/os/Bundle;)Z
    .locals 4

    const-string v2, "incognito_key"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/sbrowser/common/Tab;->mKey:Ljava/security/Key;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "cipher"

    const-string v3, "Error the key data is empty"

    invoke-static {v2, v3, v0}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static restoreState([B)I
    .locals 1

    invoke-static {p0}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrRestoreStateFromByteArray([B)I

    move-result v0

    return v0
.end method

.method public static saveEncryptionKey(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->mWrappedKey:[B

    if-eqz v0, :cond_0

    const-string v0, "incognito_key"

    sget-object v1, Lcom/sec/android/app/sbrowser/common/Tab;->mWrappedKey:[B

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method private declared-synchronized saveFullScreenBitmap(ILandroid/graphics/Bitmap;Z)Ljava/lang/String;
    .locals 18

    monitor-enter p0

    :try_start_0
    sget-boolean v14, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v14, :cond_6

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_FULL_SCREEN_BITMAP_PATH:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Instance"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mInstanceIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    move-result v3

    const-string v14, "Tab"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Creation of new directory"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v12, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v6

    const-string v14, "Tab"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Deletion of pictureFileDir file"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    move-result v7

    const-string v14, "Tab"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Creation of new file pictureFileDir "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v9, 0x0

    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    sget-boolean v14, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_BITMAP_COMPRESSION_ENABLED:Z

    if-eqz v14, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-nez v14, :cond_2

    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :cond_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v14}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v14

    invoke-virtual {v14}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v14

    invoke-virtual {v14}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->IsTabManagerActive()Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz p3, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v14, "SBrowserMainActivityContextId"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "tabId"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v14, "incognito"

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mIncognito:Z

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v14, 0x26

    invoke-static {v14, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(ILandroid/os/Bundle;)V

    :cond_3
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v14

    :goto_2
    monitor-exit p0

    return-object v14

    :catch_0
    move-exception v5

    :try_start_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    :cond_4
    if-eqz p2, :cond_5

    :try_start_5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v14

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v13, Lcom/sec/android/app/sbrowser/common/TabData;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v17

    invoke-direct/range {v13 .. v17}, Lcom/sec/android/app/sbrowser/common/TabData;-><init>([BIILandroid/graphics/Bitmap$Config;)V

    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-direct {v8, v10}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v8, v13}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V

    :cond_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    :catch_1
    move-exception v4

    move-object v9, v10

    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_6
    :goto_4
    const/4 v14, 0x0

    goto :goto_2

    :catch_2
    move-exception v4

    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v4

    :goto_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catch_4
    move-exception v4

    move-object v9, v10

    goto :goto_6

    :catch_5
    move-exception v4

    move-object v9, v10

    goto :goto_5

    :catch_6
    move-exception v4

    goto :goto_3
.end method

.method public static saveState(ILjava/lang/Object;Landroid/app/Activity;ZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->state:[B

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p3, p0, p4}, Lcom/sec/android/app/sbrowser/common/Tab;->getFilename(ZII)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    if-eqz p3, :cond_2

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v2, v1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    :goto_1
    invoke-static {v2, p1, p3}, Lcom/sec/android/app/sbrowser/common/Tab;->saveStateInternal(Ljava/io/OutputStream;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_1
.end method

.method private static saveStateInternal(Ljava/io/OutputStream;Ljava/lang/Object;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    :cond_0
    iget-wide v2, v1, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->lastShownTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->state:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->state:[B

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V

    iget v2, v1, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->parentId:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->openerAppId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->openerAppId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/utilities/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_1
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/utilities/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method private declared-synchronized saveTabBitmap(ILandroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 25

    monitor-enter p0

    :try_start_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_TAB_BITMAP_PATH:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "Instance"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mInstanceIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    move-result v7

    const-string v21, "Tab"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Directory Creation "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v15, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".png"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v20, 0x0

    sget-boolean v21, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SBROWSER_TOOLBAR_ENABLE:Z

    if-eqz v21, :cond_1

    new-instance v20, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "title.png"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v10

    const-string v21, "Tab"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Picture File Deletion "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    sget-boolean v21, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SBROWSER_TOOLBAR_ENABLE:Z

    if-eqz v21, :cond_4

    if-eqz v20, :cond_4

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    move-result v10

    const-string v21, "Tab"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Title File Deletion "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->createNewFile()Z

    move-result v16

    const-string v21, "Tab"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "New File Creation "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_0
    :try_start_2
    sget-boolean v21, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_BITMAP_COMPRESSION_ENABLED:Z

    if-eqz v21, :cond_6

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v21, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v22, 0x64

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    :cond_5
    :goto_1
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v21

    :goto_2
    monitor-exit p0

    return-object v21

    :catch_0
    move-exception v9

    :try_start_3
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    :cond_6
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v18, Lcom/sec/android/app/sbrowser/common/TabData;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/TabData;-><init>([BIILandroid/graphics/Bitmap$Config;)V

    new-instance v11, Ljava/io/ObjectOutputStream;

    invoke-direct {v11, v13}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    const/16 v18, 0x0

    sget-boolean v21, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SBROWSER_TOOLBAR_ENABLE:Z

    if-eqz v21, :cond_5

    const-string v21, "sbrowserbitmap"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "check the bitmap"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v19, Lcom/sec/android/app/sbrowser/common/TabData;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/TabData;-><init>([BIILandroid/graphics/Bitmap$Config;)V

    new-instance v12, Ljava/io/ObjectOutputStream;

    invoke-direct {v12, v14}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v12}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_1

    :catch_1
    move-exception v8

    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_3
    const/16 v21, 0x0

    goto/16 :goto_2

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3

    :catch_6
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method private saveThumbnailInFile(Landroid/graphics/Bitmap;Z)V
    .locals 7

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    :goto_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v5

    invoke-direct {p0, v5, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->saveTabBitmap(ILandroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->IsTabManagerActive()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "SBrowserMainActivityContextId"

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "tabId"

    iget v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "incognito"

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIncognito:Z

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v5, 0x1c

    invoke-static {v5, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(ILandroid/os/Bundle;)V

    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7

    :cond_4
    :goto_2
    if-nez v4, :cond_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    const/16 v5, 0xc

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    :catch_7
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2
.end method

.method private sendUrlForSummary(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private setCurrentContentView(Landroid/app/Activity;)V
    .locals 2

    check-cast p1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewRenderView;->setCurrentContentView(Lorg/chromium/content/browser/ContentView;)V

    :cond_0
    return-void
.end method

.method private setInterceptNavigationDelegate(Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInterceptNavigationDelegate:Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v1, p1}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrSetInterceptNavigationDelegate(Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    check-cast v0, Lorg/samsung/content/sbrowser/SbrContentView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInterceptNavigationDelegate:Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentView;->setInterceptNavigationDelegate(Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V

    return-void
.end method

.method private setLastShownTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLastShownTimestamp:J

    return-void
.end method

.method public static setSearchClient(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static setStaticRlz(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private setTopMarginForChromeView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->setTopMarginForContentView()V

    return-void
.end method

.method private shouldUpdateThumbnail()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private showCrashTabView()V
    .locals 6

    const/4 v5, -0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v2, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/Tab$22;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/Tab$22;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/Tab$23;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/Tab$23;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/sec/android/app/sbrowser/common/CrashTabViewFactory;->createCrashTabView(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCrashTabView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCrashTabView:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content/browser/ContentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private showInternal()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsHidden:Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUtilityCheckForHideUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/UI;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    invoke-virtual {v4, v5, v5, v5}, Lorg/chromium/content/browser/ContentViewCore;->updateTopControlsState(ZZZ)V

    :cond_0
    invoke-virtual {v3, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->attachCurrentTab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    invoke-virtual {v3, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->registerScrollOrFlingListner(Lcom/sec/android/app/sbrowser/common/Tab;)V

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    if-nez v4, :cond_5

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    invoke-virtual {v4, v5, v6, v6}, Lorg/chromium/content/browser/ContentViewCore;->updateTopControlsState(ZZZ)V

    :cond_3
    sget-object v4, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v5, "HIDEURL - attachCurrentTab was not done as Talkback/BT keyboard connected"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->isInfoBarPresent(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->setTranslationY(F)V

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v5, "HIDEURL - Either mainActivityController or getUI() is null and never be null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->reloadTabIfNecessary()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLastShownTimestamp:J

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->onShow()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getProgress()I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isShowingInterstitialPage()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyLoadProgress()V

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->checkIfUrlBookmarked(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static declared-synchronized triggerIncognitoKeyGeneration()V
    .locals 3

    const-class v1, Lcom/sec/android/app/sbrowser/common/Tab;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->mKey:Ljava/security/Key;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->sIncognitoKeyGenerator:Ljava/util/concurrent/FutureTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/Tab$12;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/common/Tab$12;-><init>()V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->sIncognitoKeyGenerator:Ljava/util/concurrent/FutureTask;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/Tab;->sIncognitoKeyGenerator:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateBookmarksThumbnail(Landroid/graphics/Bitmap;)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isItErrorPage()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getProgress()I

    move-result v5

    const/16 v6, 0x64

    if-eq v5, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09002f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->isURLBookmarked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v4, p1, v5, v3, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->updateThumbnailFromDB(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;II)V

    :cond_2
    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsNavigationToDifferentPage:Z

    if-eqz v5, :cond_0

    const/4 v1, -0x1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getNavigationHistory()Lorg/chromium/content/browser/NavigationHistory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/NavigationHistory;->getCurrentEntryIndex()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getNavigationHistory()Lorg/chromium/content/browser/NavigationHistory;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/chromium/content/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content/browser/NavigationEntry;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getNavigationHistory()Lorg/chromium/content/browser/NavigationHistory;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/chromium/content/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content/browser/NavigationEntry;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/NavigationEntry;->getOriginalUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getNavigationHistory()Lorg/chromium/content/browser/NavigationHistory;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/chromium/content/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content/browser/NavigationEntry;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/NavigationEntry;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->isURLBookmarked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v0, p1, v5, v3, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->updateThumbnailFromDB(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;II)V

    goto/16 :goto_0
.end method

.method private updateFavIconInDb()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "TAB_ID"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "TAB_FAV_ICON"

    new-instance v4, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v5}, Lorg/samsung/chrome/browser/SbrTabBridge;->getFavIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    new-instance v3, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    const/16 v5, 0xbb9

    invoke-direct {v3, v4, v5, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private updateHistoryThumbnail(Landroid/graphics/Bitmap;)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isItErrorPage()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    sget-object v6, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v7, "page didFailload received for MainFrame"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->canUpdateHistoryThumbnail()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "Tab"

    const-string v7, "Known url or reloading the page or most visited page. No need to update."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v7, "Bitmap is Not from Error page."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailWidth:I

    if-ne v6, v7, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailHeight:I

    if-ne v6, v7, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v6, v7, :cond_6

    :cond_4
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailHeight:I

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailWidth:I

    div-int v3, v6, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v6, v3, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    :cond_5
    const/4 v2, 0x0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1, v2, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->updateThumbnail(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v6, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v7, "OutOfMemoryError while updating the history thumbnail."

    invoke-static {v6, v7}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0xc

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->updateThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static updateKeys()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->mKey:Ljava/security/Key;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->mKey:Ljava/security/Key;

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->mWrappedKey:[B

    goto :goto_0
.end method

.method private updateOpenedTabThumbnail()Z
    .locals 17

    const/4 v12, 0x2

    new-array v5, v12, [I

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getWidth()I

    move-result v13

    aput v13, v5, v12

    const/4 v12, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getHeight()I

    move-result v13

    aput v13, v5, v12

    const/4 v12, 0x0

    aget v12, v5, v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_0

    const/4 v12, 0x1

    aget v12, v5, v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_1

    :cond_0
    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_1
    const/16 v12, 0x1da

    const/16 v13, 0x286

    invoke-static {v5, v12, v13}, Lcom/sec/android/app/sbrowser/utilities/MathUtils;->scaleToFitTargetSize([III)F

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    const/4 v13, 0x0

    aget v13, v5, v13

    const/4 v14, 0x1

    aget v14, v5, v14

    invoke-virtual {v12, v13, v14}, Lorg/chromium/content/browser/ContentView;->getBitmap(II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_3

    const/4 v12, 0x2

    :try_start_1
    new-array v6, v12, [I

    const/4 v12, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    aput v13, v6, v12

    const/4 v12, 0x1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    aput v13, v6, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailWidth2:I

    int-to-float v12, v12

    const/4 v13, 0x0

    aget v13, v6, v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailHeight2:I

    int-to-float v13, v13

    const/4 v14, 0x1

    aget v14, v6, v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/high16 v12, 0x3f80

    cmpg-float v12, v10, v12

    if-gez v12, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailWidth2:I

    const-wide/high16 v13, 0x3ff0

    float-to-double v15, v10

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    div-double/2addr v13, v15

    double-to-int v13, v13

    mul-int v2, v12, v13

    :goto_2
    const/high16 v12, 0x3f80

    cmpg-float v12, v10, v12

    if-gez v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailHeight2:I

    const-wide/high16 v13, 0x3ff0

    float-to-double v15, v10

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    div-double/2addr v13, v15

    double-to-int v13, v13

    mul-int v1, v12, v13

    :goto_3
    invoke-static {v6, v2, v1}, Lcom/sec/android/app/sbrowser/utilities/MathUtils;->scaleToFitTargetSize([III)F

    move-result v10

    const/4 v12, 0x0

    aget v12, v6, v12

    sub-int v12, v2, v12

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    div-float v9, v12, v10

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v12, 0x0

    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x2

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v4, v3, v9, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/high16 v12, 0x3f80

    cmpg-float v12, v10, v12

    if-gez v12, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailWidth2:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailHeight2:I

    const/4 v14, 0x1

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    const/4 v12, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v7

    sget-object v12, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v13, "OutOfMemoryError thrown while trying to fetch a tab bitmap."

    invoke-static {v12, v13, v7}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v12, 0xc

    invoke-static {v12}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    goto/16 :goto_1

    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailWidth2:I

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailHeight2:I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v8

    sget-object v12, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v13, "OutOfMemoryError while updating the history thumbnail."

    invoke-static {v12, v13}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0xc

    invoke-static {v12}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    goto :goto_4
.end method

.method private updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/Tab$14;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab$14;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method private updateTitle()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private updatesearchEngineFavIcon(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public IsthumbnailAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->multiwindow_update_available:Z

    return v0
.end method

.method public RecycleTabManagerFullBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public StartFinding(Ljava/lang/String;ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getFindOnPage()Lorg/samsung/content/sbrowser/SbrFindOnPage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getFindOnPage()Lorg/samsung/content/sbrowser/SbrFindOnPage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/samsung/content/sbrowser/SbrFindOnPage;->startFinding(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public UpdateReCaptureSoftBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " UpdateReCaptureSoftBitmap received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRequest:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tab id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRequest:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRequest:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "Tab SAVE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateReCaptureSoftBitmap called for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->updateHistoryThumbnail(Landroid/graphics/Bitmap;)V

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->updateBookmarksThumbnail(Landroid/graphics/Bitmap;)V

    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->setThumbnail(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public accessScriptFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const-string v6, "Tab"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The value of next data in byte is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v6

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    throw v6

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public addInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->addInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    return-void
.end method

.method public addToReadingList()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->readLater(Z)V

    return-void
.end method

.method protected associateWithApp(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mAppAssociatedWith:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/Tab$13;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/Tab$13;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->addTextChangeListener(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$TextChangeListener;)V

    :cond_0
    return-void
.end method

.method public captureSoftBitmap()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->caputreSoftBitmapFor(I)V

    return-void
.end method

.method public caputreSoftBitmapFor(I)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture SoftBitmap requested for value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tab id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRequest:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRequest:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRequest:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRequest:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRequest:I

    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Actual SoftBitmap requested "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRequest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tab id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearCurrentTabHistory()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->clearHistory()V

    return-void
.end method

.method createHistoricalTab()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->createSbrHistoricalTab()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSavedState:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSavedState:[B

    invoke-static {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->createSbrHistoricalTabFromState([B)V

    goto :goto_0
.end method

.method public createSbrSoftBitmapListener()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/Tab$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/Tab$8;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setSbrSoftBitmapListener(Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;)V

    :cond_0
    return-void
.end method

.method public createSbrWebLoginListener()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;-><init>(Landroid/content/Context;Lorg/samsung/content/sbrowser/SbrContentViewCore;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrWebLoginListener:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrWebLoginListener:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->SetSbrWebLoginDelegate(Lorg/samsung/content/sbrowser/SbrWebLoginDelegate;)V

    :cond_0
    return-void
.end method

.method public deleteState(Landroid/app/Activity;I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIncognito:Z

    invoke-static {v0, p1, v1, p2}, Lcom/sec/android/app/sbrowser/common/Tab;->deleteStateFile(ILandroid/app/Activity;ZI)V

    return-void
.end method

.method public destroy()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    if-eqz v1, :cond_0

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->unRegisterScrollOrFlingListner()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->unRegisterScrollOrFlingListner()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->reSetSbrSoftBitmapListener()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->reSetContentChangeListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    check-cast v0, Lorg/samsung/content/sbrowser/SbrContentView;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentView;->reSetInterceptNavigationDelegate()V

    :cond_2
    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->destroyInternal(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSetThumbnailRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSetThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedExtraThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedExtraThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedExtraThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedExtraThumbnail:Landroid/graphics/Bitmap;

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    :cond_8
    sput-object v3, Lcom/sec/android/app/sbrowser/common/Tab;->mWrappedKey:[B

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumnailAsyncTask:Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumnailAsyncTask:Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumnailAsyncTask:Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;->cancel(Z)Z

    :cond_9
    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumnailAsyncTask:Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCloseContentsRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWidgetThumbnailSaveRnnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInterceptNavigationDelegate:Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrContentViewClient:Lorg/samsung/content/sbrowser/SbrContentViewClient;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsDelegate:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->clear()V

    :cond_a
    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPageFinishBitmapHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabBridgeListener:Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrWebLoginListener:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    return-void
.end method

.method public destroyAndReleaseContents()I
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    if-eqz v3, :cond_0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->unRegisterScrollOrFlingListner()V

    :cond_1
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->unRegisterScrollOrFlingListner()V

    :cond_2
    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrWebLoginListener:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->reSetSbrSoftBitmapListener()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->reSetContentChangeListener()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    instance-of v3, v3, Lorg/samsung/content/sbrowser/SbrContentView;

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    check-cast v2, Lorg/samsung/content/sbrowser/SbrContentView;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentView;->reSetInterceptNavigationDelegate()V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrWebLoginListener:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;

    invoke-virtual {v3, v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->SetSbrWebLoginDelegate(Lorg/samsung/content/sbrowser/SbrWebLoginDelegate;)V

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->releaseDashmode()V

    :cond_5
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v3}, Lorg/samsung/chrome/browser/SbrTabBridge;->reSetSbrTabBridgeListener()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v3}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrGetReleasedWebContents()I

    move-result v1

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    invoke-virtual {v3}, Lorg/chromium/content/browser/WebContentsObserverAndroid;->detachFromWebContents()V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    :cond_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    :cond_a
    sget-object v3, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APPLOGS:destroying ContentView ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->detachObserversFromWebContents()V

    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3, v6}, Lorg/chromium/content/browser/ContentView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->removeContentViewReferences()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->destroy()V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v3}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrTabBridgeDestroy()V

    const-string v3, "Tab"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tab :: destroyAndReleaseContents() :: making mSbrTabBridge NULL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->getInfoBars()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->destroy()V

    :goto_0
    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mClientCertificateHandler:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    if-eqz v3, :cond_f

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mClientCertificateHandler:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserSmartcardWrapper:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    if-eqz v3, :cond_10

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserSmartcardWrapper:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    :cond_10
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_11
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSetThumbnailRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSetThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_13
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    :cond_14
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedExtraThumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedExtraThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedExtraThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedExtraThumbnail:Landroid/graphics/Bitmap;

    :cond_15
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    :cond_16
    sput-object v6, Lcom/sec/android/app/sbrowser/common/Tab;->mWrappedKey:[B

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRunnable:Ljava/lang/Runnable;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCloseContentsRunnable:Ljava/lang/Runnable;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWidgetThumbnailSaveRnnable:Ljava/lang/Runnable;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInterceptNavigationDelegate:Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrContentViewClient:Lorg/samsung/content/sbrowser/SbrContentViewClient;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsDelegate:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->clear()V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    :cond_17
    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPageFinishBitmapHandler:Landroid/os/Handler;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbHandler:Landroid/os/Handler;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabBridgeListener:Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    return v1

    :cond_18
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->destroyForDragAndDrop()V

    goto/16 :goto_0
.end method

.method public destroyBitmaps()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->isPhoneMultiwindowEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedFavicon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedFavicon:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    :cond_2
    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SBROWSER_TOOLBAR_ENABLE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    :cond_3
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyPageLoad(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWidgetThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWidgetThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWidgetThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWidgetThumbnail:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->myTTS:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->myTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->myTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_6
    return-void
.end method

.method public dismissLinkifyDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInterceptNavigationDelegate:Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInterceptNavigationDelegate:Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->onDismissLinkifyDialog()V

    :cond_0
    return-void
.end method

.method public doStartLoading(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "Tab"

    const-string v4, "doStartLoading"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lorg/chromium/content/browser/ContentViewCore;->user_tapped_pressed:Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->releaseDashmode()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->setCanDash(Z)V

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/mcafee/AnshinScan;->checking(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isPageLoadFinished:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->dismissExtractModePopupIfNeeded()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->removeCrashTabViewIfNeeded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    check-cast v3, Lorg/samsung/content/sbrowser/SbrContentView;

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    invoke-virtual {v3, v4}, Lorg/samsung/content/sbrowser/SbrContentView;->setIsPageLoading(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSupportedCPUCoreNum:[I

    if-eqz v3, :cond_10

    const-string v3, "192.168.1.2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    const/16 v4, 0x258

    invoke-virtual {v3, v4}, Landroid/os/DVFSHelper;->acquire(I)V

    const-string v3, "Tab"

    const-string v4, "onPageStarted CPU Aquired"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDVFSCPUBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_0

    const-string v3, "192.168.1.2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDVFSCPUBooster:Landroid/os/DVFSHelper;

    const/16 v4, 0x1b58

    invoke-virtual {v3, v4}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->getFidoHandlerInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mFidoHandlerInstance:Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mFidoHandlerInstance:Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mFidoHandlerInstance:Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->addFidoJavaScript(Lorg/chromium/content/browser/ContentView;)V

    :cond_1
    invoke-virtual {p0, v6, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyPageLodingStateToSSRM(ZLjava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_11

    const-string v3, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->initializeLayerPositions()V

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setUrlProgressCanceled(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setProgressValue(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateFingerprintIcon(Z)V

    :cond_3
    new-instance v1, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;-><init>(Landroid/content/Context;)V

    const-string v3, "CscFeature_Web_EnableConnectionGuideDuringAirplaneMode"

    invoke-static {v3}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v6, :cond_14

    if-nez v1, :cond_12

    sget-object v3, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v4, "onPageStarted: mNetworkSettingsHandler is null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserProxyHandler:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserProxyHandler:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->update()V

    :cond_5
    iput-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    invoke-virtual {v3, v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setSbrSoftBitmapListener(Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;)V

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->createSbrSoftBitmapListener()V

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mBaseUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->isPhoneMultiwindowEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->multiwindow_update_available:Z

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    new-instance v3, Lcom/sec/android/app/sbrowser/common/Tab$20;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/common/Tab$20;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab$20;->start()V

    :cond_7
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->onPageStarted(Ljava/lang/String;)V

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->updateTitle()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v3}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrSaveTabIdForSessionSync()V

    :cond_9
    invoke-static {}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->checkWebSelectIsUp()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-static {v3}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->hide(Lorg/chromium/content/browser/ContentViewCore;)V

    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->stopCurrentAccessibilityNotifications()V

    :cond_b
    iput-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrWebLoginListener:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrWebLoginListener:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;

    invoke-virtual {v3, v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->SetSbrWebLoginDelegate(Lorg/samsung/content/sbrowser/SbrWebLoginDelegate;)V

    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->createSbrWebLoginListener()V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/UI;->getFindTextToolbarWrapper()Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->stopFindAndExitWhenShown()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->onPageLoadStarted(Landroid/os/Message;)V

    :cond_d
    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v3

    const-string v4, "enable-samsung-multiwindow"

    invoke-virtual {v3, v4}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->resetThumbnail()V

    :cond_e
    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsPageStarted:Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserSmartcardWrapper:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserSmartcardWrapper:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->beSureInit()V

    :cond_f
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->setTopMarginForChromeView()V

    return-void

    :cond_10
    const-string v3, "Tab"

    const-string v4, "onPageStarted CPU did not aquire"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    check-cast v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v3, v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->updateView(I)V

    goto/16 :goto_1

    :cond_12
    if-eqz p1, :cond_13

    const-string v3, "about:blank"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "file://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "content://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_13
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->startNetworkSettingInAirplaneMode()Z

    goto/16 :goto_2

    :cond_14
    const-string v3, "CMCC"

    const-string v4, "CscFeature_Web_EnableMultipleApn4"

    invoke-static {v4}, Lorg/samsung/base/Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mNetworkHandler:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->handleNetworkError()V

    if-eqz p1, :cond_15

    const-string v3, "about:blank"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "file://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "content://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_15
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mNetworkHandler:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->startNetwork(Landroid/content/Context;I)V

    goto/16 :goto_2

    :cond_16
    if-eqz p1, :cond_17

    const-string v3, "about:blank"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "file://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "content://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_17
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mNetworkHandler:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->handleNetworkError()V

    goto/16 :goto_2
.end method

.method public enableBitmapCapture()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->captureBitmapOnLoadFinish:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->captureBitmapOnLoadFinish:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->setThumbnailBeforeTabMgrSwitch()V

    goto :goto_0
.end method

.method public evaluateDocumentForDimensions()V
    .locals 1

    const-string v0, "document.js"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->accessScriptFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->evaluateJavaScript(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDocumentId:I

    return-void
.end method

.method public evaluateJavaScript(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public executeExtracter()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsExtractModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isSummaryAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPageSummary:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getReaderRecognizeResult()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PGSUM"

    const-string v1, "Executing Extract Mode."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->executeReaderContentExtractScript(Z)V

    :cond_0
    return-void
.end method

.method public extractReaderPageIfNeeded()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsExtractModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isSummaryAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPageSummary:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getReaderRecognizeResult()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PGSUM"

    const-string v1, "extractReaderPageIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->executeReaderContentExtractScript(Z)V

    :cond_0
    return-void
.end method

.method public generateFullsizeBitmap()Landroid/graphics/Bitmap;
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v4, v2, v1}, Lorg/chromium/content/browser/ContentView;->getBitmap(II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v5, "OutOfMemoryError thrown while trying to fetch a tab bitmap."

    invoke-static {v4, v5, v0}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v4, 0xc

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    goto :goto_0
.end method

.method public getAppAssociatedWith()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mAppAssociatedWith:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getBackgroundColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 7

    const-string v4, "Tab.getBitmap"

    invoke-static {v4}, Lorg/chromium/content/common/TraceEvent;->begin(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/chromium/content/browser/ContentViewCore;->getScaledPerformanceOptimizedBitmap(II)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->canUpdateHistoryThumbnail()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->updateHistoryThumbnail(Landroid/graphics/Bitmap;)V

    :cond_0
    const-string v4, "Tab.getBitmap"

    invoke-static {v4}, Lorg/chromium/content/common/TraceEvent;->end(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v2

    sget-object v4, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v5, "OutOfMemoryError thrown while trying to fetch a tab bitmap."

    invoke-static {v4, v5, v2}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v4, 0xc

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    goto :goto_0
.end method

.method public getBlockedPopupCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrGetPopupBlockedCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBookmarkId()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDisplayHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrGetWebContentDisplayHost()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDocumentHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDocumentHeight:I

    return v0
.end method

.method public getDocumentWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDocumentWidth:I

    return v0
.end method

.method public getEditTextPosition()Landroid/graphics/Rect;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getEditTextPosition()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method public getExtraThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedExtraThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getExtractedPageSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPageSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getFallbackTextureId()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chrome://newtab/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedFaviconUrl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedFavicon:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedFaviconUrl:Ljava/lang/String;

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedFavicon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-nez v4, :cond_2

    :goto_0
    return-object v3

    :cond_2
    const/high16 v3, 0x4180

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    invoke-direct {p0, v1, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getScaledFavicon(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedFavicon:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedFaviconUrl:Ljava/lang/String;

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedFavicon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    return v0
.end method

.method public getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    return-object v0
.end method

.method public getIsNewTabLaunchedFromJS()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getBackKeyPlaceHolder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsNewtabLauncedFromJS:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastShownTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLastShownTimestamp:J

    return-wide v0
.end method

.method public getLaunchType()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLaunchType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    return-object v0
.end method

.method getLocationBar(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNewSbrowserToolBarBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getNewBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getOpenerId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mOpenerTabId:I

    return v0
.end method

.method public getParentId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mParentId:I

    return v0
.end method

.method public getPrintBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getProgress()I
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    if-nez v1, :cond_0

    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsDelegate:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->getMostRecentProgress()I

    move-result v0

    goto :goto_0
.end method

.method public getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    return-object v0
.end method

.method public getReadingListData()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;
    .locals 11

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    sget-object v5, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/android/app/sbrowser/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    sget-object v2, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    const-string v3, "path=?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v9, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v9, v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6, v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getReadingListData(Landroid/database/Cursor;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v8, v9

    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v7

    :goto_2
    :try_start_2
    const-string v2, "Tab"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while getting save page data - exception : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_1
    move-exception v7

    :goto_3
    :try_start_3
    const-string v2, "Tab"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while getting save page data - exception : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/database/CursorIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_2
    move-exception v7

    :goto_4
    :try_start_4
    const-string v2, "Tab"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while getting save page data - exception : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/database/StaleDataException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    :goto_5
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    throw v2

    :catchall_1
    move-exception v2

    move-object v8, v9

    goto :goto_5

    :catch_3
    move-exception v7

    move-object v8, v9

    goto :goto_4

    :catch_4
    move-exception v7

    move-object v8, v9

    goto :goto_3

    :catch_5
    move-exception v7

    move-object v8, v9

    goto/16 :goto_2
.end method

.method public getReadingListTitle()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListTitle:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReadingListData()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->IsDeleted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method public getReadingListUrl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListUrl:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReadingListData()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->IsDeleted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListUrl:Ljava/lang/String;

    goto :goto_1
.end method

.method public getRenderProcessPid()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isSavedAndViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x8000

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrGetRenderProcessPid()I

    move-result v0

    goto :goto_0
.end method

.method public getRenderProcessPrivateSizeKBytes()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isSavedAndViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrGetRenderProcessPrivateSizeKBytes()I

    move-result v0

    goto :goto_0
.end method

.method public getRestoredWebContents()I
    .locals 3

    sget-object v1, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v2, "APPLOGS: getRestoredWebContents()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSavedState:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSavedState:[B

    invoke-static {v1}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrRestoreStateFromByteArray([B)I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSavedState:[B

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v2, "Trying to get restored tab contents from state but no state was previously saved."

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSbrTabBridge()Lorg/samsung/chrome/browser/SbrTabBridge;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    return-object v0
.end method

.method getSbrViewClient()Lorg/samsung/content/sbrowser/SbrContentViewClient;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrContentViewClient:Lorg/samsung/content/sbrowser/SbrContentViewClient;

    return-object v0
.end method

.method public getSbrowserToolBarBitmap()Landroid/graphics/Bitmap;
    .locals 2

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SBROWSER_TOOLBAR_ENABLE:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->captureSbrowserToolBarBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getScrollOrFlingListner()Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()Ljava/lang/Object;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v1}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrGetStateAsByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSavedState:[B

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSavedState:[B

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/Tab$TabState;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSavedState:[B

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->state:[B

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLastShownTimestamp:J

    iput-wide v1, v0, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->lastShownTimestamp:J

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getParentId()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->parentId:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getAppAssociatedWith()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->openerAppId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTabFavicon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mFavIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTabKillMe()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mKillMe:Z

    return v0
.end method

.method public getTabManagerFullBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTabUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lorg/chromium/content/browser/ContentView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/view/TextureView;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/TextureView;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0342

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0341

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitleForBookmark()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getView()Lorg/chromium/content/browser/ContentView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    return-object v0
.end method

.method getViewClient()Lorg/chromium/content/browser/ContentViewClient;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    return-object v0
.end method

.method public getWebContentsObserverAndroid()Lorg/chromium/content/browser/WebContentsObserverAndroid;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method public getWindowAndroid()Lorg/chromium/ui/WindowAndroid;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivityNativeWindow:Lorg/chromium/ui/WindowAndroid;

    return-object v0
.end method

.method public getmContentController()Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    return-object v0
.end method

.method public handTouchIconUpdate(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->isUrlPinned(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->isUsingDefaultColor(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1, p2, v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->createPinTouchIcon(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p3

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->isUrlPinned(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->isUsingDefaultColor(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->getThumbnailfromRedirected(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->isUrlPinned(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->isUsingDefaultColor(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, p3, v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->createPinTouchIcon(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->isUrlPinned(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->isUsingDefaultColor(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, p3, v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->createPinTouchIcon(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method hide()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsHidden:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS:hide Tab Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contentView ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->onHide()V

    return-void
.end method

.method public importPrefetchTab(Lcom/sec/android/app/sbrowser/common/InstantTab;)V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getLocationBar(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getLocationBar(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->removeReaderVisibility()V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->getInfoBars()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/common/Tab;->destroyInternal(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/InstantTab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/InstantTab;->acquireInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v5, p0, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->instantCommited(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/util/List;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getReaderStatus()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/InstantTab;->getPrefetchedUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "test262.ecmascript"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/InstantTab;->getPrefetchedUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http://ie.microsoft.com/testdrive/performance/robohornetpro/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/InstantTab;->getPrefetchedUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->executeReaderDetectionLogic(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSupportWMLviaHtmlFeatureFlagStatus()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->IsWMLPage()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v4, Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/app/Activity;)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;->handleWMLPageSource()V

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/common/Tab;->finishInit(Landroid/content/Context;)V

    const-string v5, "CscFeature_Web_EnableDesktopSiteAsDefault"

    invoke-static {v5}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getUseDesktopUserAgent()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isNTP()Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v3, 0x1

    :goto_0
    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5, v1, v3}, Lorg/chromium/content/browser/ContentView;->setUseDesktopUserAgent(ZZ)V

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->showInternal()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyPageTitleChanged()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyTabPrefetchCommitted()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/InstantTab;->didReceivePageFinished()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyPageLoad(I)V

    :cond_7
    return-void

    :cond_8
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public initializeWebContentObserver()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/Tab$15;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/Tab$15;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    return-void
.end method

.method public isAssociatedToolBarStateDisplayed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsAssociatedToolbarDisplayed:Z

    return v0
.end method

.method public isExtracterAvailable()Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isSummaryAvailable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPageSummary:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getReaderRecognizeResult()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "PGSUM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExtracterAvailable() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsHidden:Z

    return v0
.end method

.method public isHideURLEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUtilityCheckForHideUrl()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isIncognito()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIncognito:Z

    return v0
.end method

.method public isInfoBarPresent(Landroid/view/ViewGroup;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v3, "HideURL - InfoBarView translation failed due to contentView is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isInitialNavigation()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrIsInitialNavigation()Z

    move-result v0

    return v0
.end method

.method public isIspageloadfinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isPageLoadFinished:Z

    return v0
.end method

.method public isItErrorPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mErrorPage:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    return v0
.end method

.method public isNTP()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chrome://newtab/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPageBookMarked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isPageBookMarked:Z

    return v0
.end method

.method public isPageFitToHeight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPageloadStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsPageStarted:Z

    return v0
.end method

.method public isReady()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSavedAndViewDestroyed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingInterstitialPage()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->isShowingInterstitialPage()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isShowingSnapshot()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ".mht"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTabBlockingPopups()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrGetPopupBlockedCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTalkbackSuspend()Z
    .locals 4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTextureViewAvailable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUrlBookmarked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsBookmarkedUrl:Z

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/utilities/URLUtilities;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;I)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;II)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;II)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->removeCrashTabViewIfNeeded()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->urlBlocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "Tab loadUrl Security Policy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRequest:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v1, :cond_3

    const-string v1, "loadingPerformance"

    const-string v2, "mContentView.loadUrl()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getUseDesktopUserAgent()Z

    move-result v1

    if-eqz v1, :cond_2

    sget p3, Lorg/chromium/content/browser/LoadUrlParams;->UA_OVERRIDE_TRUE:I

    :cond_2
    new-instance v0, Lorg/chromium/content/browser/LoadUrlParams;

    invoke-direct {v0, p1}, Lorg/chromium/content/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/LoadUrlParams;->setTransitionType(I)V

    invoke-virtual {v0, p3}, Lorg/chromium/content/browser/LoadUrlParams;->setOverrideUserAgent(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/ContentView;->loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInterceptNavigationDelegate:Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInterceptNavigationDelegate:Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->onUrlLoadRequested(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrlWithSanitization(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrFixupUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->reload()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    new-instance v1, Lorg/chromium/content/browser/LoadUrlParams;

    invoke-direct {v1, p1}, Lorg/chromium/content/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentView;->loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V

    goto :goto_0
.end method

.method public notifyOpendTabThumbnail()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ParserError"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method notifyPageLodingStateToSSRM(ZLjava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->cfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    const-string v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->cfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->cfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->cfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v3, "SBROWSER_PAGE_LOADING"

    invoke-interface {v2, v3, p2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->cfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v3, "SBROWSER_PAGE_LOADING"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Tab"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityResume()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS: onActivityResume Tab Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mNetworkHandler:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->reloadTabIfNecessary()V

    return-void
.end method

.method public onBitmapForPrint(Landroid/graphics/Bitmap;I)V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v2, "onBitmapForPrint()"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v2, "onBitmapForPrint bitmap is NULL"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyPrintBitmap(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getPrintState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v2, "onBitmapForPrint print state cancelled"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;

    :cond_1
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyPrintBitmap(Z)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/Tab$18;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/Tab$18;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onFirstSearch()V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public onLaunchBlockedPopups()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mKillMe:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrLaunchBlockedPopups()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->popupstatus:Z

    :cond_0
    return-void
.end method

.method public onPageFinishedUpdateSyncDB()V
    .locals 6

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "TAB_ID"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "TAB_URL"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "TAB_INDEX"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "TAB_TITLE"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v3, :cond_0

    const-string v3, "TAB_FAV_ICON"

    new-instance v4, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v5}, Lorg/samsung/chrome/browser/SbrTabBridge;->getFavIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    new-instance v3, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    const/16 v5, 0xbb9

    invoke-direct {v3, v4, v5, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onPrintBegin(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyPrintBegin(I)V

    return-void
.end method

.method public onPrintEnd()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyPrintEnd()V

    return-void
.end method

.method public onWebAlertDismissed(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    .locals 0

    return-void
.end method

.method public parentIsIncognito()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mParentIsIncognito:Z

    return v0
.end method

.method public purgeRenderProcessNativeMemory()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isSavedAndViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrPurgeRenderProcessNativeMemory()V

    goto :goto_0
.end method

.method public registerScrollOrFlingListner(Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    return-void
.end method

.method public reload()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsReload:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSupportWMLviaHtmlFeatureFlagStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->IsWMLPage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->reload()V

    goto :goto_0
.end method

.method public removeInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->removeInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    return-void
.end method

.method public requestFocus(Z)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->requestFocus()Z

    goto :goto_0
.end method

.method public resetPagesummary()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isSummaryAvailable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPageSummary:Ljava/lang/String;

    return-void
.end method

.method public resetThumbnail()V
    .locals 0

    return-void
.end method

.method public restoreState(Landroid/app/Activity;)V
    .locals 5

    sget-object v3, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v4, "APPLOGS: restoreState()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSavedState:[B

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v4, "Trying to restore tab from state but no state was previously saved."

    invoke-static {v3, v4}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSavedState:[B

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSavedState:[B

    invoke-static {v3}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrRestoreStateFromByteArray([B)I

    move-result v2

    :goto_0
    if-nez v2, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIncognito:Z

    invoke-static {v3}, Lorg/chromium/chrome/browser/ContentViewUtil;->createNativeWebContents(Z)I

    move-result v2

    const/4 v0, 0x1

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSavedState:[B

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->initContentViewClients()V

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->initContentView(Landroid/app/Activity;I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "Tab"

    const-string v4, "Resetting Tab_Crash_ state variable for tab restore"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->resetTabState()V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    :goto_1
    const/4 v3, 0x5

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;I)V

    :cond_3
    return-void

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    const-string v1, "chrome://newtab/"

    goto :goto_1
.end method

.method public restoreStateAfterTabDragAndDrop(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getMultiInstanceTabDragAndDropEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz p1, :cond_4

    const-string v4, "mUrl"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    const-string v4, "mLastLoadedUrl"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLastLoadedUrl:Ljava/lang/String;

    const-string v4, "mIsLoading"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    const-string v4, "mErrorPage"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mErrorPage:Z

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    if-eqz v4, :cond_0

    const-string v4, "progress"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_0

    const/16 v4, 0x64

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsDelegate:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsDelegate:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->setMostRecentProgressIfNeeded(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsDelegate:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->onLoadProgressChanged(I)V

    :cond_0
    const-string v4, "hasSbrSoftBitmapListener"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    invoke-virtual {v4, v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setSbrSoftBitmapListener(Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->createSbrSoftBitmapListener()V

    :cond_2
    const-string v4, "isPageLoadFinished"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isPageLoadFinished:Z

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->restoreStateAfterTabDragAndDrop(Landroid/os/Bundle;)V

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->checkIfUrlBookmarked(Ljava/lang/String;)V

    :cond_6
    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->executeReaderDetectionLogic(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public saveOpendTabThumbnail()V
    .locals 0

    return-void
.end method

.method public saveStateAndDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsHidden:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSavedState:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrGetStateAsByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSavedState:[B

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->destroyInternal(Z)V

    :cond_1
    return-void
.end method

.method public saveStateBeforeTabDragAndDrop(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getMultiInstanceTabDragAndDropEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "mUrl"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLastLoadedUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "mLastLoadedUrl"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mLastLoadedUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "mErrorPage"

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mErrorPage:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "mIsLoading"

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getProgress()I

    move-result v1

    const-string v2, "progress"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    const-string v2, "isPageLoadFinished"

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isPageLoadFinished:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    if-eqz v2, :cond_4

    const-string v2, "hasSbrSoftBitmapListener"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->saveStateBeforeTabDragAndDrop(Landroid/os/Bundle;)V

    :cond_5
    return-void
.end method

.method sendTagTitleAsHint(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->receivedTagTitleAsHint(Ljava/lang/String;)V

    return-void
.end method

.method public setAssociatedToolbarDisplayState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsAssociatedToolbarDisplayed:Z

    return-void
.end method

.method public setCachedThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->multiwindow_update_available:Z

    :cond_0
    return-void
.end method

.method public setDisableContentIntentsForTests(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mDisableContentIntentsForTests:Z

    return-void
.end method

.method public setFindMatchRectsListener(Lcom/sec/android/app/sbrowser/common/Tab$FindMatchRectsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mFindMatchRectsListener:Lcom/sec/android/app/sbrowser/common/Tab$FindMatchRectsListener;

    return-void
.end method

.method public setFindResultReceivedListener(Lcom/sec/android/app/sbrowser/common/Tab$FindResultReceivedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mFindResultReceivedListener:Lcom/sec/android/app/sbrowser/common/Tab$FindResultReceivedListener;

    return-void
.end method

.method public setFullScreenBitmap()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/Tab$21;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/Tab$21;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab$21;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setIsnewwindowcreating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isnewwindowcreating:Z

    return-void
.end method

.method public setIspageloadfinished(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isPageLoadFinished:Z

    return-void
.end method

.method public setMainContentViewClient()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrContentViewClient:Lorg/samsung/content/sbrowser/SbrContentViewClient;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentView;->setSbrContentViewClient(Lorg/samsung/content/sbrowser/SbrContentViewClient;)V

    return-void
.end method

.method public setOpenerId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mOpenerTabId:I

    return-void
.end method

.method public setPageBookMarked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isPageBookMarked:Z

    return-void
.end method

.method public setPageLoadStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsPageStarted:Z

    return-void
.end method

.method public setParentIsIncognito()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mParentIsIncognito:Z

    return-void
.end method

.method public setReadingListItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReadingListData()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->IsDeleted()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->IsDeleted()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListTitle:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListUrl:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReadingListTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method public setSnapshotId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSnapshotId:Ljava/lang/String;

    return-void
.end method

.method public setTabKillMe(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mKillMe:Z

    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 29

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_7

    const-string v2, "Tab SAVE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setThumbnail=> getBitmap not saved (NULL )for tab ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-eqz p1, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    if-eqz v2, :cond_e

    const/16 v26, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090237

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090238

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v25, 0x3f80

    mul-int v2, v5, v27

    div-int v6, v2, v28

    move/from16 v0, v20

    if-ge v6, v0, :cond_9

    move/from16 v0, v28

    int-to-float v2, v0

    int-to-float v3, v5

    div-float v25, v2, v3

    const/high16 v2, 0x3f80

    move/from16 v0, v25

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v26

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    :cond_3
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->IsTabManagerActive()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v21

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    move/from16 v0, v21

    if-ne v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7

    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_5
    :goto_3
    const/4 v2, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->multiwindow_update_available:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mIncognito:Z

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->saveThumbnailInFile(Landroid/graphics/Bitmap;Z)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_6
    :goto_4
    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v2, :cond_d

    move-object/from16 v24, p1

    if-eqz v24, :cond_0

    :try_start_3
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->saveFullScreenBitmap(ILandroid/graphics/Bitmap;Z)Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->notifyTabManagerBitmapUpdated(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_9

    goto/16 :goto_0

    :catch_0
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Tab SAVE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setThumbnail=> getBitmap not saved (RECYCLED )for tab ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Tab SAVE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setThumbnail=> getBitmap not saved (BLACK BITMAP INVALID )for tab ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    move/from16 v6, v20

    mul-int v2, v6, v28

    :try_start_4
    div-int v11, v2, v27

    move/from16 v0, v27

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    div-float v25, v2, v3

    const/high16 v2, 0x3f80

    move/from16 v0, v25

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    move v12, v6

    move-object v13, v7

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v26

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090226

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v6, v2, :cond_b

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v25, 0x3f80

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090225

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v2, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v25, v2, v3

    const/high16 v2, 0x3f80

    move/from16 v0, v25

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    const/16 v18, 0x1

    move-object/from16 v12, p1

    move/from16 v16, v6

    move-object/from16 v17, v7

    invoke-static/range {v12 .. v18}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v26

    goto/16 :goto_2

    :cond_b
    const-string v2, "Tab SAVE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bitmap not saved for tab ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_0

    :catch_1
    move-exception v23

    sget-object v2, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v3, "OutOfMemoryError while updating the history thumbnail."

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    goto/16 :goto_4

    :catch_2
    move-exception v22

    const/16 v2, 0xc

    :try_start_5
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_3

    :catch_3
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_4

    :catch_4
    move-exception v22

    :try_start_6
    invoke-virtual/range {v22 .. v22}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_3

    :catch_5
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_4

    :catch_6
    move-exception v22

    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_3

    :catch_7
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_4

    :cond_c
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->IsTabManagerActive()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SBrowserMainActivityContextId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tabId"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "incognito"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mIncognito:Z

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v2, 0x1c

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(ILandroid/os/Bundle;)V
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_4

    :catch_8
    move-exception v22

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_0

    :catch_9
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    :cond_d
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_e
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method public setThumbnailBeforeTabMgrSwitch()V
    .locals 39

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v38

    check-cast v38, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    if-eqz v38, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    const-string v5, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    const-string v5, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_2
    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->captureBitmap()Landroid/graphics/Bitmap;

    move-result-object v33

    if-eqz v33, :cond_3

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    if-nez v3, :cond_11

    const-string v4, "Tab SAVE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setThumbnailBeforeTabMgrSwitch=> getBitmap not saved (NULL )for tab ID = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-eqz v4, :cond_17

    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CHROMEVIEW_INTRO:Z

    if-nez v4, :cond_5

    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v4, :cond_9

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    :cond_6
    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SBROWSER_TOOLBAR_ENABLE:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09021a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    new-instance v29, Landroid/graphics/Point;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v31, v0

    sub-int v4, v31, v37

    sub-int v22, v4, v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    const-string v5, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    const-string v5, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    move/from16 v0, v22

    int-to-double v9, v0

    const-wide v13, 0x3fe999999999999aL

    mul-double/2addr v9, v13

    cmpg-double v4, v4, v9

    if-gez v4, :cond_8

    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SOFTWAREBITMAP_RECAPTURE_ENABLE:Z

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v4, :cond_8

    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->caputreSoftBitmapFor(I)V

    :cond_8
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v3, v4, v5, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;

    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SBROWSER_TOOLBAR_ENABLE:Z

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v26

    check-cast v26, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    if-eqz v26, :cond_9

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->captureSbrowserToolBarBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->sBrowserTitleBbitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_3
    const/16 v34, 0x0

    const/4 v7, 0x0

    :try_start_2
    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090237

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090238

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v32, 0x3f80

    mul-int v4, v6, v35

    div-int v7, v4, v36

    move/from16 v0, v20

    if-ge v7, v0, :cond_13

    move/from16 v0, v36

    int-to-float v4, v0

    int-to-float v5, v6

    div-float v32, v4, v5

    const/high16 v4, 0x3f80

    move/from16 v0, v32

    invoke-virtual {v8, v0, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v34

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    :cond_a
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mIncognito:Z

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mCachedExtraThumbnail:Landroid/graphics/Bitmap;

    :cond_b
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->multiwindow_update_available:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mIncognito:Z

    if-nez v4, :cond_c

    new-instance v4, Lcom/sec/android/app/sbrowser/common/Tab$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/sbrowser/common/Tab$9;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab$9;->start()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_c
    :goto_5
    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v4, :cond_16

    move-object/from16 v30, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mFullScreenRunnableFuture:Ljava/util/concurrent/Future;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mFullScreenRunnableFuture:Ljava/util/concurrent/Future;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_d
    new-instance v28, Lcom/sec/android/app/sbrowser/common/Tab$10;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab$10;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mFullScreenRunnableFuture:Ljava/util/concurrent/Future;

    goto/16 :goto_0

    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SOFTWAREBITMAP_RECAPTURE_ENABLE:Z

    if-eqz v4, :cond_f

    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v4, :cond_f

    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->caputreSoftBitmapFor(I)V

    :cond_f
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getBackKeyPlaceHolder()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v27

    if-eqz v27, :cond_3

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCompositorHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCompositorHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCompositorHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCompositorHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    sget-boolean v4, Lcom/sec/android/app/sbrowser/common/Tab;->mEngineNewTabLaunch:Z

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmapRGB565FromCompositor()Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmapRGB565FromCompositor()Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    goto/16 :goto_1

    :catch_0
    move-exception v24

    sget-object v4, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v5, "OutOfMemoryError thrown while trying to fetch a tab bitmap."

    move-object/from16 v0, v24

    invoke-static {v4, v5, v0}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v4, 0xc

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "Tab SAVE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setThumbnailBeforeTabMgrSwitch=> getBitmap not saved (RECYCLED )for tab ID = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_12
    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "Tab SAVE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setThumbnailBeforeTabMgrSwitch=> getBitmap not saved (BLACK BITMAP INVALID )for tab ID = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_1
    move-exception v24

    const/16 v4, 0xc

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    goto/16 :goto_3

    :cond_13
    move/from16 v7, v20

    mul-int v4, v7, v36

    :try_start_4
    div-int v12, v4, v35

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v5, v0

    div-float v32, v4, v5

    const/high16 v4, 0x3f80

    move/from16 v0, v32

    invoke-virtual {v8, v0, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x1

    move-object v9, v3

    move v13, v7

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v34

    goto/16 :goto_4

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090226

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v7, v4, :cond_15

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v32, 0x3f80

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090225

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v4, v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v32, v4, v5

    const/high16 v4, 0x3f80

    move/from16 v0, v32

    invoke-virtual {v8, v0, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    const/16 v19, 0x1

    move-object v13, v3

    move/from16 v17, v7

    move-object/from16 v18, v8

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v34

    goto/16 :goto_4

    :cond_15
    const-string v4, "Tab SAVE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bitmap not saved for tab ID = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    :catch_2
    move-exception v25

    sget-object v4, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v5, "OutOfMemoryError while updating the history thumbnail."

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xc

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    goto/16 :goto_5

    :catch_3
    move-exception v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_5

    :catch_4
    move-exception v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_5

    :catch_5
    move-exception v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_5

    :cond_16
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_17
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    const-string v5, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;

    const-string v5, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SOFTWAREBITMAP_RECAPTURE_ENABLE:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->caputreSoftBitmapFor(I)V

    goto/16 :goto_0
.end method

.method public setUrlBookmarked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsBookmarkedUrl:Z

    return-void
.end method

.method public setWidgetThumbnail(Landroid/graphics/Bitmap;)V
    .locals 16

    const-string v13, "Tab"

    const-string v14, "setWidgetThumbnail - Bitmap width and height after scaling in setWidgetThumbnail(bitmap) START"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    :try_start_0
    const-string v13, "Tab"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bitmap width and height after scaling in setWidgetThumbnail(bitmap) bitmap == NULLWidth  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Height "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getHeight()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Lorg/chromium/content/browser/ContentView;->getBitmap(II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    if-eqz p1, :cond_7

    const-string v13, "Tab"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setWidgetThumbnail - Bitmap Width  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Height "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f09002f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090030

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090083

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090084

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090091

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getHeight()I

    move-result v13

    mul-int/2addr v13, v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getWidth()I

    move-result v14

    div-int v3, v13, v14

    mul-int v13, v12, v6

    div-int v4, v13, v8

    mul-int v13, v12, v7

    div-int v5, v13, v9

    const-string v13, "Tab"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "width  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Height "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mThumbHeight "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mThumbHeightHover "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v3, v4, :cond_1

    move v4, v3

    :cond_1
    if-ge v3, v5, :cond_2

    move v5, v3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-gt v12, v13, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-gt v3, v13, :cond_8

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v12, v3, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v11, v13, v14, v12, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    if-ne v10, v11, :cond_3

    sget-object v13, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "in case, address of tmpBitmap "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", and address of tmpBitmap1  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "is same."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0201d6

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mWidgetThumbnail:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mWidgetThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mWidgetThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mWidgetThumbnail:Landroid/graphics/Bitmap;

    :cond_4
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mWidgetThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mIncognito:Z

    if-nez v13, :cond_5

    new-instance v13, Lcom/sec/android/app/sbrowser/common/Tab$11;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/sec/android/app/sbrowser/common/Tab$11;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/Tab$11;->start()V

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    const/16 p1, 0x0

    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_1
    const-string v13, "Tab"

    const-string v14, "Bitmap width and height after scaling in setWidgetThumbnail(bitmap) END"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :catch_0
    move-exception v1

    const-string v13, "Tab"

    const-string v14, "Bitmap width and height after scaling in setWidgetThumbnail(bitmap) OOM"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v14, "OutOfMemoryError thrown while trying to fetch a tab bitmap."

    invoke-static {v13, v14, v1}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v13, 0xc

    invoke-static {v13}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    goto/16 :goto_0

    :cond_8
    :try_start_2
    const-string v13, "Tab"

    const-string v14, "Bitmap width and height after cut the bitmap to thubnail size in setWidgetThumbnail(bitmap) THUMBNAIL BITMAP NOT CREATED"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v13, "Tab"

    const-string v14, "Bitmap width and height after cut the bitmap to thubnail size in setWidgetThumbnail(bitmap) THUMBNAIL BITMAP OOM"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v14, "OutOfMemoryError while updating the history thumbnail."

    invoke-static {v13, v14}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0xc

    invoke-static {v13}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    goto :goto_1
.end method

.method public setWindowId(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWindowId:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mWindowId:I

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrSetWindowId(I)V

    return-void
.end method

.method public shouldTabStateBePersisted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsTabStateDirty:Z

    return v0
.end method

.method show(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->begin()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    const-string v1, "APPLOGS:ContentView is null, restoring"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->restoreState(Landroid/app/Activity;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mSavedState:[B

    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS: Show Tab Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contentView ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->showInternal()V

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    return-void
.end method

.method public showExtractPopupIfNeeded()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsExtractModeEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isSummaryAvailable:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPageSummary:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getReaderRecognizeResult()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PGSUM"

    const-string v3, "showExtractionPopupIfNeeded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getExtractValueCheck()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0314

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setExtractModeVisibility(Z)V

    goto :goto_0
.end method

.method public showInterstitialPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startExtracterIfNeeded()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsExtractModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->isSummaryAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mPageSummary:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->prepareAndShowExtractPage(Z)V

    :cond_0
    return-void
.end method

.method public stopFinding(Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getFindOnPage()Lorg/samsung/content/sbrowser/SbrFindOnPage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getFindOnPage()Lorg/samsung/content/sbrowser/SbrFindOnPage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/samsung/content/sbrowser/SbrFindOnPage;->stopFinding(Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isHideURLPrefEnabled()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;->onFindOnPageUIRemoved()V

    :cond_1
    return-void
.end method

.method public stopLoading()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyPageLoad(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->onPageFinishedUpdateSyncDB()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->stopLoading()V

    goto :goto_0
.end method

.method public tabStateWasPersisted()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mIsTabStateDirty:Z

    return-void
.end method

.method public tryHandleSpdyProxyAuthentication(Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unRegisterScrollOrFlingListner()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    return-void
.end method

.method public updateSoftBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/Tab;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateSoftBitmap received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRequest:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tab id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRequest:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRequest:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Tab SAVE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateSoftBitmap called for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->updateHistoryThumbnail(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->updateBookmarksThumbnail(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->setThumbnail(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public urlBlocked(Ljava/lang/String;)Z
    .locals 13

    const/4 v12, 0x1

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tab urlBlocked Security Policy and Url is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getFirewallPolicy()Landroid/sec/enterprise/FirewallPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    invoke-virtual {v0, p1}, Landroid/sec/enterprise/FirewallPolicy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v12, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->stopLoading()V

    const-string v1, ""

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v0, 0x1100003

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string v0, " at "

    const-string v2, ""

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "%s"

    const-string v2, ""

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "%e"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;

    const v3, 0x10402a1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v6, v7

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    const-string v2, "Blocked page"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, "Blocked page"

    invoke-virtual/range {v0 .. v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->loadDataWithBaseUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v12

    :goto_3
    return v0

    :catch_0
    move-exception v8

    :goto_4
    :try_start_3
    const-string v1, "Failed loading web page!"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v6, :cond_5

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_6
    throw v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v7

    goto :goto_5

    :catch_4
    move-exception v8

    move-object v6, v7

    goto :goto_4
.end method

.method public useTextureView()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
