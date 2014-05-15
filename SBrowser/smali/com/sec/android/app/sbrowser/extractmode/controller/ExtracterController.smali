.class public Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;
.super Ljava/lang/Object;
.source "ExtracterController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;
.implements Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$FindCustomActionModeCallback;,
        Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$InterceptNavigationDelegateReader;,
        Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$TabChromeWebContentsDelegateAndroidReader;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT_NOW:Ljava/lang/String; = "yyyy_MM_dd_HH_mm_ss"

.field private static final ID_ALREADY_SAVED_IMG:I = 0x2

.field private static final ID_MEMORY_IS_FULL_IMG:I = 0x3

.field private static final ID_SAVE_FOR_LATER_IMG:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "ExtractModeController"

.field private static final MULTI_PAGE_READER_JAVASCRIPT:Ljava/lang/String; = "multi_page_reader.js"

.field private static final NIGHT_MODE_READER_JAVASCRIPT:Ljava/lang/String; = "nightmode.js"

.field private static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field private static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static final WAITING_TIME_LIMIT:J = 0x1388L

.field private static notifications:[I


# instance fields
.field private MINIMUM_WAITING_LIMIT:J

.field private mActivity:Landroid/app/Activity;

.field private mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field private mExecutorThread:Lcom/sec/android/app/sbrowser/common/ExecutorThread;

.field private mFindCustomActionModeCallback:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$FindCustomActionModeCallback;

.field private mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

.field mInterceptNavigationDelegateReader:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$InterceptNavigationDelegateReader;

.field private mIsForExtractMode:Z

.field private mIsLauchFromMainActivity:Ljava/lang/String;

.field private mIsLauchFromReaderActivity:Z

.field private mIsLauchFromReaderList:Z

.field private mIsTranslateNeeded:Z

.field private mIsTranslationCompleted:Z

.field private mIsXLarge:Z

.field private mJavaScriptCallback:Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;

.field private mNativeWebContentsPtr:I

.field private mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

.field private mProgressDialogue:Landroid/app/ProgressDialog;

.field private mReaderArticleHeadingData:Ljava/lang/String;

.field private mReaderModel:Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;

.field private mReadercounter:J

.field private mResources:Landroid/content/res/Resources;

.field private mSBrowserMainActivityContextId:Ljava/lang/String;

.field private mSavePageUrl:Ljava/lang/String;

.field private mSavedImageBitmap:Landroid/graphics/Bitmap;

.field private mSavedReaderFile:Ljava/lang/String;

.field private mSavepageStoragePath:Ljava/lang/String;

.field private mSavepageTitle:Ljava/lang/String;

.field private mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

.field private mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;

.field private mTranslatedSummary:Ljava/lang/String;

.field private mTranslationResult:Z

.field private mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

.field private mWebContentsDelegate:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$TabChromeWebContentsDelegateAndroidReader;

.field private mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

.field mWindowAndroid:Lorg/chromium/ui/WindowAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->notifications:[I

    sget-object v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->notifications:[I

    const/4 v1, 0x0

    const/16 v2, 0x29

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->notifications:[I

    const/4 v1, 0x1

    const/16 v2, 0x9

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mResources:Landroid/content/res/Resources;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsXLarge:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mReaderModel:Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mJavaScriptCallback:Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mExecutorThread:Lcom/sec/android/app/sbrowser/common/ExecutorThread;

    new-instance v0, Lorg/samsung/content/sbrowser/SynchronizeObj;

    invoke-direct {v0}, Lorg/samsung/content/sbrowser/SynchronizeObj;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;

    iput v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mNativeWebContentsPtr:I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromMainActivity:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromReaderActivity:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromReaderList:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsForExtractMode:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsTranslateNeeded:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsTranslationCompleted:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mTranslationResult:Z

    const-string v0, "The Translation Summary"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mTranslatedSummary:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavedReaderFile:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mWindowAndroid:Lorg/chromium/ui/WindowAndroid;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mInterceptNavigationDelegateReader:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$InterceptNavigationDelegateReader;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavedImageBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mReaderArticleHeadingData:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mReadercounter:J

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->MINIMUM_WAITING_LIMIT:J

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->setScreenMode()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mProgressDialogue:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Lorg/samsung/content/sbrowser/SynchronizeObj;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mTranslationResult:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->createExtracter()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavedImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavedImageBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mReaderArticleHeadingData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromReaderList:Z

    return v0
.end method

.method private createExtracter()V
    .locals 3

    const-string v0, "PGSUM"

    const-string v1, "createExtracter called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromReaderList:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    new-instance v1, Lorg/chromium/content/browser/LoadUrlParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavepageStoragePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/chromium/content/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentView;->loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->isTranslateNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->requestTranslate()V

    :cond_0
    const-string v0, "ExtractModeController"

    const-string v1, "createExtracter called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    new-instance v1, Lorg/chromium/content/browser/LoadUrlParams;

    const-string v2, "chrome://newtab/"

    invoke-direct {v1, v2}, Lorg/chromium/content/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentView;->loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V

    goto :goto_0
.end method

.method private getCurrentTimeStamp()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy_MM_dd_HH_mm_ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mResources:Landroid/content/res/Resources;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method private getTarget(Lcom/sec/android/app/sbrowser/common/DataUri;)Ljava/io/File;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dat"

    const-string v1, "yyyy-MM-dd-HH-mm-ss-"

    const/4 v3, 0x0

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->getSettings(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isDownloadInternalMemory()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSDCardPath()Ljava/lang/String;

    move-result-object v9

    :cond_0
    if-nez v9, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v2

    const-string v11, "ExtractModeController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Creation of file dir "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/DataUri;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v0

    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    return-object v10
.end method

.method private readMultiplePagesReaderScriptFromAssets()Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "multi_page_reader.js"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const-string v6, "ExtractModeController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The number bytes read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v6

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v3, 0x0

    :cond_1
    :goto_1
    throw v6

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private readNightModeReaderScriptFromAssets()Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "nightmode.js"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const-string v6, "ExtractModeController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The number bytes read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v6

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v3, 0x0

    :cond_1
    :goto_1
    throw v6

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private runDialog()V
    .locals 6

    const-string v2, "ExtractModeController"

    const-string v3, "runDialog called"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->displayReaderProgressDialog()V

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mReadercounter:J

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$1;-><init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;Landroid/os/Handler;)V

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->MINIMUM_WAITING_LIMIT:J

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mReadercounter:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->dismissReaderProgressDialog()V

    goto :goto_0
.end method

.method private runDialouge()V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mProgressDialogue:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c002a

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    move v4, v3

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mProgressDialogue:Landroid/app/ProgressDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mProgressDialogue:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private saveDataUri(Ljava/lang/String;)V
    .locals 13

    const/4 v9, 0x0

    :try_start_0
    new-instance v12, Lcom/sec/android/app/sbrowser/common/DataUri;

    invoke-direct {v12, p1}, Lcom/sec/android/app/sbrowser/common/DataUri;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v12}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->getTarget(Lcom/sec/android/app/sbrowser/common/DataUri;)Ljava/io/File;

    move-result-object v11

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c007e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/DataUri;->getData()[B

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/DataUri;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/DataUri;->getData()[B

    move-result-object v6

    array-length v6, v6

    int-to-long v6, v6

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v10, :cond_2

    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    const/4 v9, 0x0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v2

    :cond_1
    :goto_2
    throw v1

    :catch_1
    move-exception v1

    :goto_3
    if-eqz v9, :cond_0

    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v9, :cond_1

    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v9, 0x0

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v9, v10

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v9, v10

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v9, v10

    goto :goto_3

    :cond_2
    move-object v9, v10

    goto :goto_1
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

.method private final setScreenMode()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsXLarge:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsXLarge:Z

    goto :goto_0
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

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

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

.method private showShortToast(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public InitExtracterActivity(Lorg/chromium/ui/WindowAndroid;)V
    .locals 4

    :try_start_0
    new-instance v1, Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-direct {v1, p1}, Lorg/samsung/chrome/browser/SbrTabBridge;-><init>(Lorg/chromium/ui/WindowAndroid;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mNativeWebContentsPtr:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/chromium/chrome/browser/ContentViewUtil;->createNativeWebContents(Z)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mNativeWebContentsPtr:I

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$TabChromeWebContentsDelegateAndroidReader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$TabChromeWebContentsDelegateAndroidReader;-><init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$1;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mWebContentsDelegate:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$TabChromeWebContentsDelegateAndroidReader;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mNativeWebContentsPtr:I

    invoke-interface {v1, v2, v3, p1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->initializeContentView(Landroid/app/Activity;ILorg/chromium/ui/WindowAndroid;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$InterceptNavigationDelegateReader;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$InterceptNavigationDelegateReader;-><init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mInterceptNavigationDelegateReader:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$InterceptNavigationDelegateReader;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mInterceptNavigationDelegateReader:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$InterceptNavigationDelegateReader;

    invoke-virtual {v1, v2}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrSetInterceptNavigationDelegate(Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ExtractModeController"

    const-string v2, " SbrTabBridge : Native method not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkIfAlreadyLoggedInCloudServer(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public copyImage(Landroid/graphics/Bitmap;)V
    .locals 13

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/copyImage.bmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x28

    invoke-virtual {p1, v10, v11, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v9

    const-string v10, "ExtractModeController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Creation of a new file fileImage "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    move-result v10

    if-nez v10, :cond_2

    if-eqz v7, :cond_b

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    const/4 v6, 0x0

    :goto_1
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_5
    invoke-virtual {v5, v10, v11}, Ljava/io/File;->setReadable(ZZ)Z

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    const-string v11, "clipboardEx"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v3, :cond_3

    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    if-eqz v2, :cond_3

    invoke-virtual {v2, v8}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v10, v2}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, ""

    const-string v11, "CopyImage::onMenuItemClick : clipEx.setData returned false."

    invoke-static {v10, v11}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    :cond_3
    :goto_3
    if-eqz v7, :cond_a

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    const/4 v6, 0x0

    :goto_4
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_6
    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    :try_start_8
    const-string v10, "ClipData"

    const-string v11, "CopyImage::onMenuItemClick : clipEx.setData returned true."

    invoke-static {v10, v11}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_3

    :catch_1
    move-exception v10

    move-object v6, v7

    move-object v0, v1

    :goto_7
    if-eqz v6, :cond_6

    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    const/4 v6, 0x0

    :cond_6
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    :goto_8
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    :goto_9
    if-eqz v6, :cond_7

    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    const/4 v6, 0x0

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    const/4 v0, 0x0

    :cond_8
    :goto_a
    throw v10

    :catch_3
    move-exception v10

    :goto_b
    if-eqz v6, :cond_9

    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    const/4 v6, 0x0

    :cond_9
    if-eqz v0, :cond_0

    :try_start_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_8

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_6
    move-exception v4

    move-object v6, v7

    :goto_c
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_7
    move-exception v4

    move-object v6, v7

    goto :goto_5

    :catch_8
    move-exception v4

    goto :goto_c

    :catch_9
    move-exception v4

    goto :goto_8

    :catchall_1
    move-exception v10

    move-object v0, v1

    goto :goto_9

    :catchall_2
    move-exception v10

    move-object v6, v7

    move-object v0, v1

    goto :goto_9

    :catch_a
    move-exception v10

    move-object v0, v1

    goto :goto_b

    :catch_b
    move-exception v10

    move-object v6, v7

    move-object v0, v1

    goto :goto_b

    :catch_c
    move-exception v10

    goto :goto_7

    :catch_d
    move-exception v10

    move-object v0, v1

    goto :goto_7

    :cond_a
    move-object v6, v7

    goto :goto_4

    :cond_b
    move-object v6, v7

    goto/16 :goto_1
.end method

.method public copyLinkAddress(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->saveToClipboard(Ljava/lang/String;)V

    const v0, 0x7f0c0131

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->showShortToast(I)V

    return-void
.end method

.method public copyLinkText(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->saveToClipboard(Ljava/lang/String;)V

    const v0, 0x7f0c0131

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->showShortToast(I)V

    return-void
.end method

.method public copyNumber(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->saveToClipboard(Ljava/lang/String;)V

    const v0, 0x7f0c0131

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->showShortToast(I)V

    return-void
.end method

.method public createSearchInstance()V
    .locals 0

    return-void
.end method

.method public decodeImage(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener;->onImageDownloadStartNoStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public displayReaderView(Ljava/lang/String;)V
    .locals 5

    const-string v2, "chrome://newtab/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "PGSUM"

    const-string v3, "displayReaderView Called"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$4;-><init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->runDialouge()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mReaderModel:Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->getExtractModeScrollYPosition()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content/browser/ContentView;->scrollBy(II)V

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromReaderList:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->setActions()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->readMultiplePagesReaderScriptFromAssets()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "adjustWidthForFirstPage();"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mJavaScriptCallback:Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content/browser/ContentViewCore;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mNextcontent:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->readMultiplePagesReaderScriptFromAssets()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ExtractModeController"

    const-string v3, "displayReaderView Called for else condition"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "adjustWidthForExtractPage();"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mJavaScriptCallback:Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content/browser/ContentViewCore;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->dismissProgressDialog()V

    goto/16 :goto_0
.end method

.method public getCurrentSBrowserMainContextId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object v0
.end method

.method public getExtractModeDefaultFont()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getReaderDefaultFont()I

    move-result v0

    return v0
.end method

.method public getReaderFontValue()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mReaderModel:Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->getExtractModeFontValue()I

    move-result v0

    return v0
.end method

.method public getReaderLastUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSettings(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    return-object v0
.end method

.method public getUI()Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    return-object v0
.end method

.method public handleNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public initializeWebContentObserver()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$5;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$5;-><init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    return-void
.end method

.method public isForExtractMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsForExtractMode:Z

    return v0
.end method

.method public isFromReadingList()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromReaderList:Z

    return v0
.end method

.method public isTranslateNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsTranslateNeeded:Z

    return v0
.end method

.method public isTranslationCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsTranslationCompleted:Z

    return v0
.end method

.method public isXLarge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsXLarge:Z

    return v0
.end method

.method public makeDayMode()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->readNightModeReaderScriptFromAssets()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "enableSamsungDayMode();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mJavaScriptCallback:Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;

    invoke-virtual {v1, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;)V

    return-void
.end method

.method public makeNightMode()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->readNightModeReaderScriptFromAssets()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "enableSamsungNightMode();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mJavaScriptCallback:Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;

    invoke-virtual {v1, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;)V

    return-void
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
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->onBackPressed()V

    return-void
.end method

.method public onConfgurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isFromMainActivity"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromMainActivity:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isFromReaderActivity"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromReaderActivity:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isFromReadingList"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromReaderList:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isForExtactMode"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsForExtractMode:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isTranlateNeeded"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsTranslateNeeded:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "savePageUrl"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavePageUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "savePageTitle"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavepageTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "savePageStoragePath"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavepageStoragePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromMainActivity:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromMainActivity:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromReaderList:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromReaderActivity:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->setExtractMode(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/chromium/content/browser/AndroidBrowserProcess;->init(Landroid/content/Context;I)Z
    :try_end_0
    .catch Lorg/chromium/content/common/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    new-instance v1, Lorg/chromium/ui/WindowAndroid;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lorg/chromium/ui/WindowAndroid;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mWindowAndroid:Lorg/chromium/ui/WindowAndroid;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mWindowAndroid:Lorg/chromium/ui/WindowAndroid;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->InitExtracterActivity(Lorg/chromium/ui/WindowAndroid;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->setFullScreen()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->requestWindowFeature()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->inflateAndInitializeUi()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->attachContentViewToRenderer()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->initializeUI()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->initializeWebContentObserver()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SBrowserMainActivityContextId"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    const-string v1, "ExtractModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SBrowser Activity Context Id  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "articleHeadData"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mReaderArticleHeadingData:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "savedpagefilepath"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavedReaderFile:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->isContentViewListAdpaterKeyValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/chromium/content/common/ProcessInitException;->printStackTrace()V

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_7
    const-string v2, "ExtractModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Extracter appContext = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mReaderModel:Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mReaderModel:Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->startExtracterPreference()V

    new-instance v1, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$FindCustomActionModeCallback;

    invoke-direct {v1, p0, v4}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$FindCustomActionModeCallback;-><init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$1;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mFindCustomActionModeCallback:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$FindCustomActionModeCallback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;-><init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)V

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentView;->setSbrContentViewClient(Lorg/samsung/content/sbrowser/SbrContentViewClient;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->createExtracter()V

    new-instance v1, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$3;-><init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    sget-object v1, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->notifications:[I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getTabReaderNextData()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mNextcontent:Ljava/lang/String;

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->createSearchInstance()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->getSettings(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getExtractModeCheck()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->requestTranslate()V

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

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
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->sendContextMenuCreatedBroadcast(Lcom/sec/android/app/sbrowser/common/Tab;)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->notifications:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->onDestroy()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrDestroyWebContents(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrTabBridgeDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->onOptionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->onPause()V

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "SBrowserMainActivityContextId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SBrowserMainActivityContextId"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public openContact(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone"

    const/4 v2, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openDialPad(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public prepareAndAppendTranslation()V
    .locals 4

    const-string v2, "PGSUM"

    const-string v3, "Translate prepareAndAppendTranslation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsExtractModeEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mTranslatedSummary:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getTabExtractData()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <div style=\"word-wrap: break-word;\"><br><br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<div style = \"background-color:rgb(204,204,204);padding: 5px 5px;\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mTranslatedSummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</div"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->setTabExtractData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public prepareShareSummary()V
    .locals 4

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromReaderList:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getExtractedPageSummary()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getArticleHeading()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mTranslatedSummary:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mTranslatedSummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->unescapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->shareUrl(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavePageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavepageTitle:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->shareUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public prepareShareUrl()V
    .locals 4

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromReaderList:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getArticleHeading()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->unescapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->shareUrl(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavePageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavepageTitle:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->shareUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryCurrentActionBarHeight()I
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    new-array v2, v4, [I

    const v4, 0x10102eb

    aput v4, v2, v5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

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

.method protected readerLoadDatawithBaseUrl()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getTabExtractData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->setActions()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getTabExtractData()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->loadDataWithBaseUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ExtractModeController"

    const-string v1, "readerLoadDatawithBaseUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "ExtractModeController"

    const-string v1, "readerLoadDatawithBaseUrl for else"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mReadercounter:J

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->MINIMUM_WAITING_LIMIT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mReadercounter:J

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->runDialog()V

    goto :goto_0
.end method

.method public requestTranslate()V
    .locals 0

    return-void
.end method

.method public saveImage(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/DataUri;->isDataUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->saveDataUri(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;->start()V

    goto :goto_0
.end method

.method public saveLink(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;->start()V

    return-void
.end method

.method public saveToClipboard(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public selectLastTouchText()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v7

    iput-boolean v8, v7, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSpenTextSelectionMode:Z

    new-array v0, v9, [I

    new-array v6, v9, [I

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/chromium/content/browser/ContentView;->getLocationInWindow([I)V

    aput v8, v6, v8

    const/4 v7, 0x1

    aput v8, v6, v7

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewGestureHandler;->getEventX()F

    move-result v7

    float-to-int v3, v7

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewGestureHandler;->getEventY()F

    move-result v7

    float-to-int v4, v7

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->computeHorizontalScrollOffset()I

    move-result v7

    add-int v2, v3, v7

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v7

    add-int v1, v4, v7

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/input/SelectionHandleController;->allowAutomaticShowing()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v7

    invoke-virtual {v7, v2, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->selectLastTouchText(II)V

    return-void
.end method

.method public sendUrlForContextSearch()V
    .locals 0

    return-void
.end method

.method public setActions()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->initializeReaderFont()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->setReaderFont()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->setListnerOnProgressDialog()V

    return-void
.end method

.method public setFindToolBar(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mFindCustomActionModeCallback:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$FindCustomActionModeCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$FindCustomActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$FindCustomActionModeCallback;-><init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$1;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mFindCustomActionModeCallback:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$FindCustomActionModeCallback;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mFindCustomActionModeCallback:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$FindCustomActionModeCallback;

    invoke-virtual {p2, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->setFindToolbar(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setFontAndScrollPosition(ILjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mReaderModel:Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->setFontAndScrollPosition(ILjava/lang/String;I)V

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public setSbrTabBrige()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mWebContentsDelegate:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$TabChromeWebContentsDelegateAndroidReader;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrInitWebContents(Lorg/chromium/content/browser/ContentViewCore;Lorg/samsung/chrome/browser/SbrWebContentsDelegateAndroid;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrTabSetWindowId()V

    :cond_0
    return-void
.end method

.method public setUi(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    return-void
.end method

.method public start(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
