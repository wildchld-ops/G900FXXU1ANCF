.class public Lcom/sec/android/app/sbrowser/reader/ReaderDetection;
.super Ljava/lang/Object;
.source "ReaderDetection.java"


# static fields
.field private static final FAILED_URL:Ljava/lang/String; = "data:text/html,chromewebdata"

.field private static final ID_READER_SHOW:I = 0x2

.field private static final ID_SHOW_READER:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = null

.field public static final MODE_DISABLE:I = 0x4

.field public static final MODE_NATIVE_PATCH_RECOGNITION:I = 0x8

.field public static final MODE_NATIVE_RECOGNITION:I = 0x2

.field public static final MODE_NORMAL_RECOGNITION:I = 0x0

.field public static final MODE_RECOGNITION_ONLY:I = 0x1

.field public static final NATIVE:I = 0x2

.field public static final NATIVE_PATCH:I = 0x1

.field private static final READER_CONTENT_EXTRACTION_JAVASCRIPT:Ljava/lang/String; = "reader.js"

.field private static final READER_RECOGNIZE_JAVASCRIPT:Ljava/lang/String; = "recognizearticle.js"


# instance fields
.field hReader:Landroid/os/Handler;

.field private mActivity:Landroid/app/Activity;

.field private mContentView:Lorg/chromium/content/browser/ContentView;

.field private mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field public mForExtractMode:Z

.field private mIsReaderAvailable:Ljava/lang/Boolean;

.field private mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

.field public mNextcontent:Ljava/lang/String;

.field private mReaderHeading:Ljava/lang/String;

.field public mReaderScriptResult:Ljava/lang/String;

.field private mReaderScriptUrl:Ljava/lang/String;

.field private mReaderSpeechText:Ljava/lang/String;

.field private mReaderSummaryDataForExtractMode:Ljava/lang/String;

.field private mReaderTranslateText:Ljava/lang/String;

.field public mReaderVisible:Z

.field public mRecogReaderAvailable:Z

.field public mRecognizeArticle:Ljava/lang/String;

.field private mRecognizeScriptArticle:Ljava/lang/String;

.field private mRecognizeScriptUrl:Ljava/lang/String;

.field private mSaveForLaterBody:Ljava/lang/String;

.field mSavedUrl:[Ljava/lang/String;

.field private mScriptArticle:Ljava/lang/String;

.field private mTTSSupported:Ljava/lang/String;

.field private mTabExtractData:Ljava/lang/String;

.field private mTabReaderData:Ljava/lang/String;

.field private mTabReaderNextData:Ljava/lang/String;

.field private mTranslatedSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Lcom/sec/android/app/sbrowser/common/Tab;Landroid/app/Activity;Lorg/chromium/content/browser/ContentView;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mContentView:Lorg/chromium/content/browser/ContentView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeArticle:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mSavedUrl:[Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTabReaderNextData:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTabExtractData:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mSaveForLaterBody:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderScriptUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderTranslateText:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeScriptArticle:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mScriptArticle:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeScriptUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderScriptResult:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mNextcontent:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTabReaderData:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderHeading:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderSpeechText:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTTSSupported:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mForExtractMode:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTranslatedSummary:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecogReaderAvailable:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mIsReaderAvailable:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderSummaryDataForExtractMode:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$6;-><init>(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->hReader:Landroid/os/Handler;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mContentView:Lorg/chromium/content/browser/ContentView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeScriptUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeScriptUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->checkMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mIsReaderAvailable:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->setExtractedReaderContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->setReaderContentData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderScriptUrl:Ljava/lang/String;

    return-object v0
.end method

.method private accessReaderFromAssets()Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mScriptArticle:Ljava/lang/String;

    if-nez v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "reader.js"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    sget-object v5, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The number bytes read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mScriptArticle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mScriptArticle:Ljava/lang/String;

    return-object v5

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v3, 0x0

    :cond_1
    :goto_1
    throw v5

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private accessRecognizearticleFromAssets()Ljava/lang/String;
    .locals 8

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeScriptArticle:Ljava/lang/String;

    if-nez v5, :cond_0

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "recognizearticle.js"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    sget-object v5, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The number bytes read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeScriptArticle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeScriptArticle:Ljava/lang/String;

    return-object v5

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v3, 0x0

    :cond_1
    :goto_1
    throw v5

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private checkMode(I)Z
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->READER_MODE:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setExtractedReaderContent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderScriptResult:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;-><init>(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;->start()V

    :cond_0
    return-void
.end method

.method private setReaderContentData(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    const-string v3, "@###@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v3, v4

    const-string v3, "@###@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v3, v4

    const-string v3, "READER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readerData ::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "@####@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mSaveForLaterBody:Ljava/lang/String;

    const-string v3, "@#####@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderTranslateText:Ljava/lang/String;

    const-string v3, "@####@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderSpeechText:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderSpeechText:Ljava/lang/String;

    const-string v4, "@##@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderHeading:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderSpeechText:Ljava/lang/String;

    const-string v4, "@##@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderSpeechText:Ljava/lang/String;

    const-string v3, "READER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sReaderSpeechText ::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderSpeechText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderSpeechText:Ljava/lang/String;

    const-string v4, "@#@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTTSSupported:Ljava/lang/String;

    const-string v3, "READER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sTTSSupported ::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTTSSupported:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderSpeechText:Ljava/lang/String;

    const-string v4, "@#@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderSpeechText:Ljava/lang/String;

    const-string v3, "READER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sReaderSpeechText 1 ::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderSpeechText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->checkMode(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->hReader:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    if-eqz v1, :cond_1

    const-string v3, "LAV7"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceivedReaderData"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "</div>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mNextcontent:Ljava/lang/String;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x6

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTabReaderData:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTabReaderData:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mNextcontent:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->setTabReaderData(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mForExtractMode:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mIsReaderAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private setReaderImageUrl(Ljava/lang/String;)V
    .locals 17

    :try_start_0
    const-string v14, "<img"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "<img"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v14, ">"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v14, "&amp;"

    const-string v15, "&"

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v14, "&lt;"

    const-string v15, "<"

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v14, "&gt;"

    const-string v15, ">"

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v14, "&quot;"

    const-string v15, "\""

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v14, "&#039;"

    const-string v15, "\'"

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v14, "src=\""

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "src=\""

    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const-string v14, "\""

    add-int/lit8 v15, v13, 0x5

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    add-int/lit8 v14, v13, 0x5

    invoke-virtual {v5, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v14, "src"

    invoke-static {v6, v14}, Lcom/sec/android/app/sbrowser/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "src="

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x4

    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v14, "&"

    invoke-virtual {v7, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    const/4 v14, 0x0

    const-string v15, "&"

    invoke-virtual {v7, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mSavedUrl:[Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v16, v14, v15

    :cond_0
    :goto_0
    const-string v14, "<img"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    const/4 v14, -0x1

    if-eq v9, v14, :cond_1

    const-string v14, ">"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v14, "&amp;"

    const-string v15, "&"

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "&lt;"

    const-string v15, "<"

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "&gt;"

    const-string v15, ">"

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "&quot;"

    const-string v15, "\""

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "&#039;"

    const-string v15, "\'"

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "src=\""

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "src=\""

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const-string v14, ":"

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const-string v14, "\""

    invoke-virtual {v11, v14, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    add-int/lit8 v14, v13, 0x5

    invoke-virtual {v11, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v14, "src"

    invoke-static {v10, v14}, Lcom/sec/android/app/sbrowser/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "src="

    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x4

    invoke-virtual {v10, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v14, "&"

    invoke-virtual {v7, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    const/4 v14, 0x0

    const-string v15, "&"

    invoke-virtual {v7, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mSavedUrl:[Ljava/lang/String;

    const/4 v15, 0x1

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v16, v14, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string v14, "PGSUM"

    const-string v15, "setReaderImageUrl Done"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mActivity:Landroid/app/Activity;

    new-instance v15, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$5;-><init>(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)V

    invoke-virtual {v14, v15}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mSavedUrl:[Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v16, v14, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v14, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->LOGTAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error while getting the image url for saved pages: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v14, "PGSUM"

    const-string v15, "setReaderImageUrl Done"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mActivity:Landroid/app/Activity;

    new-instance v15, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$5;-><init>(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)V

    invoke-virtual {v14, v15}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mSavedUrl:[Ljava/lang/String;

    const/4 v15, 0x1

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v16, v14, v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v14

    const-string v15, "PGSUM"

    const-string v16, "setReaderImageUrl Done"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mActivity:Landroid/app/Activity;

    new-instance v16, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$5;

    invoke-direct/range {v16 .. v17}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$5;-><init>(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v14
.end method


# virtual methods
.method public checkReaderStatus(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecogReaderAvailable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mIsReaderAvailable:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mForExtractMode:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->resetReaderImageUrl()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderFailedUrl:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getReaderStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->removeReaderVisibility()V

    const-string v0, "false"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeArticle:Ljava/lang/String;

    :cond_0
    const-string v0, "disp.cc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->removeReaderVisibility()V

    const-string v0, "false"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeArticle:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mContentView:Lorg/chromium/content/browser/ContentView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-void
.end method

.method public executeReaderContentExtractScript()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mForExtractMode:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->accessReaderFromAssets()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$2;-><init>(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;)V

    return-void
.end method

.method public executeReaderContentExtractScript(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mForExtractMode:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->accessReaderFromAssets()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$3;-><init>(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;)V

    return-void
.end method

.method public executeReaderDetectionLogic(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderScriptUrl:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->checkMode(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getReaderStatus()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    sget-object v2, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->LOGTAG:Ljava/lang/String;

    const-string v3, "Reader disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderFailedUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "data:text/html,chromewebdata"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "chrome://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "content://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "http://article.wn.com"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v2, v1, 0x32

    if-gt v0, v2, :cond_4

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->LOGTAG:Ljava/lang/String;

    const-string v3, "Native recognition is activated!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->recognizeArticle(I)V

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->LOGTAG:Ljava/lang/String;

    const-string v3, "Simple Native recognition is activated!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->recognizeArticle(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderFailedUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "data:text/html,chromewebdata"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "chrome://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "content://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "http://article.wn.com"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v2, v1, 0x32

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->accessRecognizearticleFromAssets()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$1;-><init>(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)V

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content/browser/ContentViewCore;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;)V

    goto/16 :goto_0

    :cond_5
    iput-object v6, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeArticle:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->startCapturingToolBarBitmap(Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iput-object v6, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderFailedUrl:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->startCapturingToolBarBitmap(Z)V

    goto/16 :goto_0
.end method

.method public getArticleHeading()Ljava/lang/String;
    .locals 3

    const-string v0, "Reader email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderHeading:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderHeading:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionForSavePage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mSaveForLaterBody:Ljava/lang/String;

    const-string v1, "@#####@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mSaveForLaterBody:Ljava/lang/String;

    const-string v1, "@#####@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mSaveForLaterBody:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mSaveForLaterBody:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlForSavedPages()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mSavedUrl:[Ljava/lang/String;

    return-object v0
.end method

.method public getReaderRecognizeResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecogReaderAvailable:Z

    return v0
.end method

.method public getReaderScriptUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeScriptUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReaderSummaryForExtractMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderSummaryDataForExtractMode:Ljava/lang/String;

    return-object v0
.end method

.method public getReaderTranslateText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderTranslateText:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizeArticleResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeArticle:Ljava/lang/String;

    return-object v0
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

.method public getTTSSupported()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabExtractData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTabExtractData:Ljava/lang/String;

    return-object v0
.end method

.method public getTabReaderData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTabReaderData:Ljava/lang/String;

    return-object v0
.end method

.method public getTabReaderNextData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTabReaderNextData:Ljava/lang/String;

    return-object v0
.end method

.method public getTabReaderSpeechTextData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderSpeechText:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTranslatedSummary:Ljava/lang/String;

    return-object v0
.end method

.method public imageVisibleStringUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const-string v5, "<img"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v5, ">"

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "<!--"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const-string v5, "-->"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x0

    if-le v3, v1, :cond_0

    if-ge v3, v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "<img"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v5, ">"

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    :cond_0
    return-object v4
.end method

.method public isReaderAvailable()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mIsReaderAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isReaderMode()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onRecognizeResult(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v0, "true"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeArticle:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mIsReaderAvailable:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecogReaderAvailable:Z

    const-string v0, "PGSUM"

    const-string v1, "on Recognise result for content url"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->showExtractPopupIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->hReader:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->executeReaderContentExtractScript()V

    goto :goto_0

    :cond_1
    const-string v0, "false"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeArticle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->startCapturingToolBarBitmap(Z)V

    goto :goto_0
.end method

.method public resetReaderImageUrl()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mSavedUrl:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mSavedUrl:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    return-void
.end method

.method public setExtractedReaderContentFromCache(Ljava/lang/String;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mForExtractMode:Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->setExtractedReaderContent(Ljava/lang/String;)V

    return-void
.end method

.method public setReaderSummaryForExtractMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderSummaryDataForExtractMode:Ljava/lang/String;

    return-void
.end method

.method public setReaderVisibleMode(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderVisible:Z

    return-void
.end method

.method public setTabExtractData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTabExtractData:Ljava/lang/String;

    return-void
.end method

.method public setTabReaderData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTabReaderData:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTabReaderNextData:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTabReaderData:Ljava/lang/String;

    const-string v1, ""

    :goto_0
    if-eqz v0, :cond_0

    move-object v1, v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->imageVisibleStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTabReaderData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTabReaderData:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->setReaderImageUrl(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->setReaderImageUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setTranslatedSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mTranslatedSummary:Ljava/lang/String;

    return-void
.end method

.method public startCapturingToolBarBitmap(Z)V
    .locals 0

    return-void
.end method
