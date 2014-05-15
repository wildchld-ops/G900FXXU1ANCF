.class public Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;
.super Ljava/lang/Object;
.source "ReadLaterController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$InterceptNavigationDelegateReadLater;,
        Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$TabChromeWebContentsDelegateAndroidReadLater;
    }
.end annotation


# static fields
.field private static final SAVE_PAGE_DESCRIPTION_EXTRACTOR:Ljava/lang/String; = "save_page_description_extractor.js"

.field private static final WAITING_TIME_LIMIT:J = 0x1388L

.field private static final mHeightOfBitmap:I = 0xf4


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private final MINIMUM_WAITING_LIMIT:J

.field private mActivity:Landroid/app/Activity;

.field private mContentView:Lorg/chromium/content/browser/ContentView;

.field private mContentViewForSavedpage:Lorg/chromium/content/browser/ContentView;

.field private mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field private mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

.field private mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field private mInterceptNavigationDelegateReader:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$InterceptNavigationDelegateReadLater;

.field private mIsFileNameReceived:Z

.field private mMainContentView:Lorg/chromium/content/browser/ContentView;

.field private mNativeWebContentsPtr:I

.field private final mReadLaterContext:Landroid/content/Context;

.field private mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

.field private mReadercounter:J

.field private mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

.field private mSBrowserMainActivityContextId:Ljava/lang/String;

.field private mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

.field private mWebContentsDelegate:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$TabChromeWebContentsDelegateAndroidReadLater;

.field private mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

.field mWindowAndroid:Lorg/chromium/ui/WindowAndroid;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/content/browser/ContentView;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadercounter:J

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->MINIMUM_WAITING_LIMIT:J

    iput v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mNativeWebContentsPtr:I

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mWindowAndroid:Lorg/chromium/ui/WindowAndroid;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentViewForSavedpage:Lorg/chromium/content/browser/ContentView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mMainContentView:Lorg/chromium/content/browser/ContentView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mIsFileNameReceived:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mMainContentView:Lorg/chromium/content/browser/ContentView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mIsFileNameReceived:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mIsFileNameReceived:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/chromium/content/browser/ContentView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Lorg/chromium/content/browser/ContentView;)Lorg/chromium/content/browser/ContentView;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->checkReader()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/samsung/chrome/browser/SbrTabBridge;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Lorg/samsung/chrome/browser/SbrTabBridge;)Lorg/samsung/chrome/browser/SbrTabBridge;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/chromium/content/browser/WebContentsObserverAndroid;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Lorg/chromium/content/browser/WebContentsObserverAndroid;)Lorg/chromium/content/browser/WebContentsObserverAndroid;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->isHTMLPage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    return-object v0
.end method

.method private checkReader()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->isReaderAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;

    new-instance v1, Lorg/chromium/content/browser/LoadUrlParams;

    const-string v2, "chrome://newtab/"

    invoke-direct {v1, v2}, Lorg/chromium/content/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentView;->loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadercounter:J

    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadercounter:J

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->runDialog()V

    goto :goto_0
.end method

.method private isHTMLPage(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "htm"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private savePage(Z)V
    .locals 10

    const v9, 0x7f0c01d8

    const/16 v8, 0x100

    const/4 v7, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getActualReadingListDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SavePage dir created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->isReaderMode()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez p1, :cond_6

    sget v4, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->READER_MODE:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    const-string v4, "PGSUM"

    const-string v5, "Executing ReadingLIST Mode."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->isReaderAvailable()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, ""

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getDescriptionForSavePage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+|\\r+|\\n+"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    if-eq v0, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_1

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getDescription()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getCurrentReadingListData()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setDescription(Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->executeReaderContentExtractScript()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->runDialog()V

    :goto_2
    return-void

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SavePage dir cannot be created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while creating SavePage dir "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->updateDescription(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->evaluateDescription(Z)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;

    new-instance v5, Lorg/chromium/content/browser/LoadUrlParams;

    const-string v6, "chrome://newtab/"

    invoke-direct {v5, v6}, Lorg/chromium/content/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/chromium/content/browser/ContentView;->loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->initializeWebContentObserver(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->evaluateDescription(Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->evaluateDescription(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->savePageAs()V

    goto :goto_2
.end method

.method private startReader()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/chromium/ui/WindowAndroid;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lorg/chromium/ui/WindowAndroid;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mWindowAndroid:Lorg/chromium/ui/WindowAndroid;

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mNativeWebContentsPtr:I

    if-nez v0, :cond_1

    invoke-static {v3}, Lorg/chromium/chrome/browser/ContentViewUtil;->createNativeWebContents(Z)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mNativeWebContentsPtr:I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mNativeWebContentsPtr:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mWindowAndroid:Lorg/chromium/ui/WindowAndroid;

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/content/browser/ContentView;->newInstance(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;I)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;

    return-void
.end method


# virtual methods
.method public InitReaderActivity(Lorg/chromium/ui/WindowAndroid;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-direct {v1, p1}, Lorg/samsung/chrome/browser/SbrTabBridge;-><init>(Lorg/chromium/ui/WindowAndroid;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mNativeWebContentsPtr:I

    if-nez v1, :cond_0

    invoke-static {v4}, Lorg/chromium/chrome/browser/ContentViewUtil;->createNativeWebContents(Z)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mNativeWebContentsPtr:I

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$TabChromeWebContentsDelegateAndroidReadLater;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$TabChromeWebContentsDelegateAndroidReadLater;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mWebContentsDelegate:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$TabChromeWebContentsDelegateAndroidReadLater;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mNativeWebContentsPtr:I

    invoke-static {v1, v2, p1, v4}, Lorg/chromium/content/browser/ContentView;->newInstance(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;I)Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mWebContentsDelegate:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$TabChromeWebContentsDelegateAndroidReadLater;

    invoke-virtual {v1, v2, v3, v4}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrInitWebContents(Lorg/chromium/content/browser/ContentViewCore;Lorg/samsung/chrome/browser/SbrWebContentsDelegateAndroid;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    invoke-virtual {v1}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrTabSetWindowId()V

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$InterceptNavigationDelegateReadLater;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$InterceptNavigationDelegateReadLater;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mInterceptNavigationDelegateReader:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$InterceptNavigationDelegateReadLater;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mInterceptNavigationDelegateReader:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$InterceptNavigationDelegateReadLater;

    invoke-virtual {v1, v2}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrSetInterceptNavigationDelegate(Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ReaderController"

    const-string v2, " SbrTabBridge : Native method not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OnReceiveBitmapFromCache(Landroid/graphics/Bitmap;)V
    .locals 18

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    const-string v16, "observeSavePageFileNameReceived - cachedBitmap received"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsReadingListFaceDetectionEnabled()Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-static {}, Lcom/sec/android/dmc/MVFDEngine;->FDInit()I

    invoke-static {v1, v3, v2}, Lcom/sec/android/dmc/MVFDEngine;->FDRun(Landroid/graphics/Bitmap;II)I

    move-result v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_0

    invoke-static {v12}, Lcom/sec/android/dmc/MVFDEngine;->getFaceROI(I)Lcom/sec/android/dmc/MVFDEngine$FaceROI;

    move-result-object v7

    iget v9, v7, Lcom/sec/android/dmc/MVFDEngine$FaceROI;->Top:I

    iget v8, v7, Lcom/sec/android/dmc/MVFDEngine$FaceROI;->Bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Face detected at rect : ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v7, Lcom/sec/android/dmc/MVFDEngine$FaceROI;->Left:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v7, Lcom/sec/android/dmc/MVFDEngine$FaceROI;->Top:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v7, Lcom/sec/android/dmc/MVFDEngine$FaceROI;->Right:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v7, Lcom/sec/android/dmc/MVFDEngine$FaceROI;->Bottom:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/dmc/MVFDEngine;->FDRelease()I

    if-gtz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    const-string v16, "Face not detected"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v1, v15, v0, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v14

    :goto_1
    if-lt v3, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getCurrentReadingListData()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setImageStyle(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getCurrentReadingListData()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setThumbnailCachedBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :cond_2
    if-lt v3, v2, :cond_4

    int-to-float v15, v3

    const/high16 v16, 0x43b4

    div-float v13, v15, v16

    const/high16 v15, 0x42f4

    mul-float/2addr v15, v13

    float-to-int v5, v15

    :goto_3
    add-int v15, v9, v8

    div-int/lit8 v4, v15, 0x2

    div-int/lit8 v11, v5, 0x2

    sub-int v15, v4, v11

    if-gez v15, :cond_5

    if-le v5, v2, :cond_3

    move v5, v2

    :cond_3
    const/4 v15, 0x0

    const/16 v16, 0x0

    :try_start_0
    move/from16 v0, v16

    invoke-static {v1, v15, v0, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_1

    :cond_4
    int-to-float v15, v3

    const/high16 v16, 0x4314

    div-float v13, v15, v16

    const/high16 v15, 0x4334

    mul-float/2addr v15, v13

    float-to-int v5, v15

    goto :goto_3

    :cond_5
    add-int v15, v4, v11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    sub-int v15, v2, v5

    if-ltz v15, :cond_6

    const/4 v15, 0x0

    sub-int v16, v2, v5

    move/from16 v0, v16

    invoke-static {v1, v15, v0, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_1

    :cond_6
    if-le v5, v2, :cond_7

    move v5, v2

    :cond_7
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v1, v15, v0, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_1

    :cond_8
    const/4 v15, 0x0

    sub-int v16, v4, v11

    move/from16 v0, v16

    invoke-static {v1, v15, v0, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    goto :goto_1

    :catch_0
    move-exception v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "OnReceiveBitmapFromCache : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v1, v15, v0, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v14

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getCurrentReadingListData()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    move-result-object v15

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setImageStyle(I)V

    goto/16 :goto_2
.end method

.method public destroyTabBridge()V
    .locals 0

    return-void
.end method

.method public evaluateDescription(Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    const-string v2, "save_page_description_extractor.js"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->accessScriptFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mMainContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Z)V

    invoke-virtual {v1, v0, v2}, Lorg/chromium/content/browser/ContentViewCore;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;)V

    return-void
.end method

.method public getUi()Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListXLargeUi;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    :goto_0
    return-object v1

    :cond_0
    const-class v1, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListPhoneUi;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while accessing PhoneUi exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while instantiating PhoneUi exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initializeWebContentObserver(Z)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    return-void
.end method

.method public modelPropertyChanged(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public observeSavePageFileNameReceived(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->isReaderMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;

    new-instance v1, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Z)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentView;->setSbrContentViewClient(Lorg/samsung/content/sbrowser/SbrContentViewClient;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    const-string v1, "onBackPressed - consuming backkey event as nothing has to be done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getCurrentReadingListData()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->clearAll()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SBrowserMainActivityContextId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    const-string v1, "onResume : mContentViewListAdapter == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    const v2, 0x7f0c0021

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume : It should not happen generally -> mSBrowserMainActivityContextId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SBrowserMainActivityContextId"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public readLater(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->getUi()Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;->showProgress(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    const-string v1, "onCreate : mContentViewListAdapter is null ... returning"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    if-nez v0, :cond_3

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->SAVE_PAGE_AS_MHTML:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->setSaveAsOption(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    const-string v1, "onCreate: error creating save page activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;->dismissProgress(Landroid/content/Context;Lorg/chromium/content/browser/ContentView;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getActualReadingListDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setSavePageDirectory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->isReaderMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    new-instance v0, Lorg/chromium/ui/WindowAndroid;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/chromium/ui/WindowAndroid;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mWindowAndroid:Lorg/chromium/ui/WindowAndroid;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mWindowAndroid:Lorg/chromium/ui/WindowAndroid;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->InitReaderActivity(Lorg/chromium/ui/WindowAndroid;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->initializeWebContentObserver(Z)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->observeSavePageFileNameReceived(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->savePage(Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentViewForSavedpage:Lorg/chromium/content/browser/ContentView;

    goto :goto_1
.end method

.method public runDialog()V
    .locals 6

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadercounter:J

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Landroid/os/Handler;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->destroy()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;

    :cond_1
    iget v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mNativeWebContentsPtr:I

    invoke-static {v2}, Lorg/chromium/chrome/browser/ContentViewUtil;->destroyNativeWebContents(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    const-string v3, "runDialog exceeded WAITING_TIME_LIMIT"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;->dismissProgress(Landroid/content/Context;Lorg/chromium/content/browser/ContentView;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    const v4, 0x7f0c0148

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;->showToast(Landroid/content/Context;I)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadercounter:J

    goto :goto_0
.end method

.method public scrapPageSavedFileName(Ljava/lang/String;Z)V
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scrapPageSavedFileName :: Recieved Filename :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "text/html"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->isHTMLPage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "text/html"

    if-eqz v0, :cond_0

    const-string v0, "text/html"

    const-string v3, "text/html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;

    const-string v3, "Dismissing the progressbar - Saving Not Aloowed"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    const v4, 0x7f0c0021

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;->showToast(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;->dismissProgress(Landroid/content/Context;Lorg/chromium/content/browser/ContentView;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getActualReadingListDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mEncryptedDirectryPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mIsFileNameReceived:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0, v3, p2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->setFavicon(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->executeReadingListDataTask(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;Z)V

    goto :goto_0
.end method
