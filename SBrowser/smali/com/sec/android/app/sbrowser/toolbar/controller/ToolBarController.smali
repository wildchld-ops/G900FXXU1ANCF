.class public Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;
.super Ljava/lang/Object;
.source "ToolBarController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;
.implements Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;
.implements Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$TextChangeListener;
    }
.end annotation


# static fields
.field private static final CANDIDATE_URL_NUM:I = 0x3

.field private static final COPY_IMAGE_FILE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.app.sbrowser/copyImage.bmp"

.field private static final CURRENT_SEARCH_ENGINE_NAME:Ljava/lang/String; = "current_search_engine_name"

.field private static final EXCLUDED_TEXT:Ljava/lang/String; = "search"

.field private static final HOME_SCREEN_DEFAULT_MODE:I = 0x1

.field private static final KEYBOARD_MODE_CHANGE_DELAY_MS:I = 0x12c

.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final NOTIFICATION_ID:I = 0x63a

.field private static final NO_OF_NOTIFICATIONS:I = 0x3

.field protected static final VOICE_RECOGNITION_RESULT:I = 0x68

.field private static final WAITING_TIME_LIMIT:J = 0x2328L

.field public static sActionMode:Z

.field private static sNotifications:[I


# instance fields
.field private MINIMUM_WAITING_LIMIT:J

.field private bufferString:Ljava/lang/String;

.field private isDeleteBtnClicked:Z

.field public isReaderActive:Z

.field private isTabSelected:Z

.field protected mActivity:Landroid/app/Activity;

.field private mBookmarkButtonClicked:Z

.field protected mContentview:Lorg/chromium/content/browser/ContentView;

.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field protected mIncognitoTab:Ljava/lang/Boolean;

.field private mIsSuggestionComingFromVoiceSearchResult:Z

.field private mIsSuggestionListVisited:Z

.field private mIsVoiceSearchInProgress:Z

.field private mKeyboardResizeModeTask:Ljava/lang/Runnable;

.field private mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

.field private mOverviewListener:Landroid/view/View$OnClickListener;

.field private mPreselectedTabIndex:I

.field private mPrevString:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReSetDialog:Landroid/app/AlertDialog;

.field private mReadercounter:J

.field private mResources:Landroid/content/res/Resources;

.field private mSBrowserMobileApplicationContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

.field private mSbrAutocomplete:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

.field private mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

.field public mSmartDB:Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

.field private mSmartSuggestionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSugTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSugUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

.field private mTextChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$TextChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

.field private mToolBitmapCaptured:Z

.field private mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

.field private mWindowManagerIconClicked:Z

.field public selected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->LOGTAG:Ljava/lang/String;

    sput-boolean v2, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->sActionMode:Z

    const/4 v0, 0x3

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->sNotifications:[I

    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->sNotifications:[I

    const/16 v1, 0x10

    aput v1, v0, v2

    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->sNotifications:[I

    const/4 v1, 0x1

    const/16 v2, 0x11

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->sNotifications:[I

    const/4 v1, 0x2

    const/16 v2, 0x24

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mReadercounter:J

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->MINIMUM_WAITING_LIMIT:J

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mProgressDialog:Landroid/app/ProgressDialog;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->isReaderActive:Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartDB:Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSugUrls:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSugTexts:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBitmapCaptured:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->isDeleteBtnClicked:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mPreselectedTabIndex:I

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mReSetDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mResources:Landroid/content/res/Resources;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIsVoiceSearchInProgress:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIsSuggestionComingFromVoiceSearchResult:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mBookmarkButtonClicked:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mWindowManagerIconClicked:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->isTabSelected:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIsSuggestionListVisited:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->selected:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSmartSuggestBarFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartDB:Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartSuggestionItems:Ljava/util/List;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->initilizeModel()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->initializeNotificationHandler()V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mKeyboardResizeModeTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->onPageLoadFinished(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->copyImageToBrowser(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->checkReader()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mReSetDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mReSetDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private checkReader()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->isReaderAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->startReaderActivity(Z)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mReadercounter:J

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->MINIMUM_WAITING_LIMIT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mReadercounter:J

    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkReader: mReadercounter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mReadercounter:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->runDialog()V

    goto :goto_0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v6

    move-object v3, v4

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_2
    return v7

    :catch_1
    move-exception v1

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_2
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v8

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_4
    :goto_5
    throw v7

    :cond_5
    if-eqz v4, :cond_6

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_7
    :goto_6
    const/4 v7, 0x1

    move-object v5, v6

    move-object v3, v4

    goto :goto_2

    :catch_3
    move-exception v7

    goto :goto_6

    :catch_4
    move-exception v8

    goto :goto_5

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_4

    :catchall_2
    move-exception v7

    move-object v5, v6

    move-object v3, v4

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v3, v4

    goto :goto_3

    :catch_6
    move-exception v1

    move-object v5, v6

    move-object v3, v4

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method private copyImageToBrowser(Ljava/lang/String;)Ljava/io/File;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    const-string v5, "file:///storage"

    const-string v6, "/storage"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v3, Ljava/io/File;

    const-string v5, "/data/data/com.sec.android.app.sbrowser/copyImage.bmp"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-ne v5, v6, :cond_1

    const-string v5, "CopyImage"

    const-string v6, "CopyFile returned true."

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-object v2, v3

    :cond_0
    move-object v5, v2

    :goto_0
    return-object v5

    :cond_1
    const-string v5, "CopyImage"

    const-string v6, "CopyFile returned false."

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    move-object v5, v2

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const-string v5, "CopyImage"

    const-string v6, "copyImageToBrowser failed"

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v2

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method public static getSuggestionType(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getType()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    move-result-object v0

    return-object v0
.end method

.method private initializeNotificationHandler()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$2;-><init>(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    return-void
.end method

.method private initilizeModel()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->setPropertyChangeListner(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V

    return-void
.end method

.method private onPageLoadFinished(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v1, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->onPageLoadFinished(ILcom/sec/android/app/sbrowser/common/Tab;)V

    :cond_0
    return-void
.end method

.method private onTabSelected(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "VerificationLog"

    const-string v1, "onTabSelected - starts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->updateCurrentTabDisplayStatus(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_USER:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    if-ne p1, v0, :cond_1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->isTabSelected:Z

    :cond_0
    :goto_0
    const-string v0, "VerificationLog"

    const-string v1, "onTabSelected - stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_CLOSE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->createToolBarViewTreeObserver(I)V

    goto :goto_0
.end method

.method private populatePotentialUrlCandidates(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->simplifyUrlForDisplay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->simplifyUrlForDisplay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private shouldAutocomplete()Z
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static simplifyUrlForDisplay(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "http"

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "www."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "www."

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    const-string v3, "file"

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    const-string v3, "/"

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_0

    :cond_6
    const-string v3, "https"

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1
.end method

.method private urlTextMatchesSuggestion(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)Z
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->populatePotentialUrlCandidates(Ljava/util/Set;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->isUrlSuggestion()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->populatePotentialUrlCandidates(Ljava/util/Set;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->populatePotentialUrlCandidates(Ljava/util/Set;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addSmartSuggestions()V
    .locals 29

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'"

    const-string v5, "\'\'"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartSuggestionItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartSuggestionItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_0
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSugUrls:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSugTexts:Ljava/util/ArrayList;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartDB:Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartDB:Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;->getMatching(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v24

    if-eqz v24, :cond_6

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v3, "\'"

    const-string v4, ""

    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    :cond_1
    const/4 v3, 0x1

    invoke-static {v8, v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->simplifyUrlForDisplay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSugUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    new-instance v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->SEARCH_RESULT_NAVSUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->nativeType()I

    move-result v3

    const/16 v4, 0x578

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartSuggestionItems:Ljava/util/List;

    new-instance v4, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    move-object/from16 v0, v28

    invoke-direct {v4, v2, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSugUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSugTexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v3, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_4

    const-string v3, "\'"

    const-string v4, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    :goto_1
    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v25

    const-string v3, "ToolBarController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in addSmartSuggestions "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_4
    :try_start_1
    const-string v23, ""

    goto :goto_1

    :cond_5
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_6
    const/16 v26, 0x0

    :goto_3
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v26

    if-ge v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartSuggestionItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :cond_8
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartDB:Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;->getFromCategory(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v21

    if-eqz v21, :cond_c

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_9

    const-string v3, "\'"

    const-string v4, ""

    invoke-virtual {v15, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    :cond_9
    const/4 v3, 0x1

    invoke-static {v15, v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->simplifyUrlForDisplay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSugUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    new-instance v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->SEARCH_RESULT_NAVSUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->nativeType()I

    move-result v10

    const/16 v11, 0x578

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v20}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartSuggestionItems:Ljava/util/List;

    new-instance v4, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    move-object/from16 v0, v28

    invoke-direct {v4, v2, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSugUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSugTexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    :cond_b
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_c
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3
.end method

.method public addTextChangeListener(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$TextChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTextChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTextChangeListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTextChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTextChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public clearDismissedSuggetionList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->clearDismissedSuggetionList()V

    return-void
.end method

.method public clearSuggestions(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->backupCurrentSuggestionList()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->clearSuggestionList()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->notifySuggestionDataChanged()V

    :cond_0
    return-void
.end method

.method public commitPrefetchUrl(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->commitPrefetchUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createToolBarViewTreeObserver(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->createToolBarViewTreeObserver(I)V

    return-void
.end method

.method public dismissSearchEnginePopup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;->dismissUi()V

    :cond_0
    return-void
.end method

.method public displaySearchEnginePopup(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->hideSuggestions()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->setSearchEngine()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;->initialiseUi(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;->showUi(Z)V

    return-void
.end method

.method public endPrefetch()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->endPrefetch()V

    return-void
.end method

.method public findMatchingUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->shouldAutocomplete()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->getMatchedQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->getSuggestion()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->urlTextMatchesSuggestion(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_2
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->getSuggestion()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v3, v1

    goto :goto_0
.end method

.method public finishUrlFocusChange(Z)V
    .locals 4

    const/16 v2, 0x20

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mKeyboardResizeModeTask:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;Landroid/view/Window;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mKeyboardResizeModeTask:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mKeyboardResizeModeTask:Ljava/lang/Runnable;

    const/16 v3, 0x12c

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->sendLocationBarPostDelayed(Ljava/lang/Runnable;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public getActionMode()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->sActionMode:Z

    return v0
.end method

.method protected getActivity()Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getToolbarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    return-object v0
.end method

.method public getContentView()Lorg/chromium/content/browser/ContentView;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mContext:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mPreselectedTabIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    iget v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mPreselectedTabIndex:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->index()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v2, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getCurrentView()Lorg/chromium/content/browser/ContentView;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mContentview:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mContentview:Lorg/chromium/content/browser/ContentView;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mContentview:Lorg/chromium/content/browser/ContentView;

    return-object v1
.end method

.method public getDismissedSuggestionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->getDismissedSuggestionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHomeScreenMode()I
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_internet"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mResources:Landroid/content/res/Resources;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSbrAutocomplete()Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSbrAutocomplete:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    return-object v0
.end method

.method public getSearchEngineController()Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    return-object v0
.end method

.method public getSmartDB()Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartDB:Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

    return-object v0
.end method

.method public getSuggestionListItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->getSuggestionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
    .locals 0

    return-object p0
.end method

.method public getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    return-object v0
.end method

.method public getToolbarView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getmSearchengineBaseController()Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->setSearchEngine()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    return-object v0
.end method

.method public initAutoCompleteController()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->initilizeModel()V

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;-><init>(Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge$OnSuggestionsReceivedListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSbrAutocomplete:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    return-void
.end method

.method public initiateVoiceSearch()V
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "web_search"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "calling_package"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.speech.extra.WEB_SEARCH_ONLY"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x68

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIsVoiceSearchInProgress:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->LOGTAG:Ljava/lang/String;

    const-string v3, "VoiceSearch ActivityNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIsVoiceSearchInProgress:Z

    goto :goto_0
.end method

.method public invokeQuickAcessScreen(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->invokeQuickAcessScreen(Z)V

    return-void
.end method

.method public isDeleteBtnClicked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->isDeleteBtnClicked:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->selected:Z

    return v0
.end method

.method public isSuggestionComingFromVoiceSearchResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIsSuggestionComingFromVoiceSearchResult:Z

    return v0
.end method

.method public isTabSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->isTabSelected:Z

    return v0
.end method

.method public isToolBitmapCaptured()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBitmapCaptured:Z

    return v0
.end method

.method public isVoiceSearchInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIsVoiceSearchInProgress:Z

    return v0
.end method

.method public launchBookmarkActivity()V
    .locals 7

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mBookmarkButtonClicked:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mWindowManagerIconClicked:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mBookmarkButtonClicked:Z

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ToolBarController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tab.getUrl() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getReadingListUrl()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ToolBarController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tab.getSavePageData().getUrl() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v2, v0

    :cond_2
    const-string v4, "url"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Most visited"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "title"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v4, "action_bar_title"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c015c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "SBrowserMainActivityContextId"

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    const/16 v5, 0xa

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_3
    const-string v4, "title"

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitleForBookmark()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public launchReaderView()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getReaderStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/utilities/KeyboardUtils;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    sget v1, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->READER_MODE:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    const-string v1, "PGSUM"

    const-string v2, "Executing Reader Mode."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isJavaScriptEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->executeReaderContentExtractScript()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->runDialog()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0003

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setReaderClick(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->startReaderActivity(Z)V

    goto :goto_0
.end method

.method public loadHomePage()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "about:blank"

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v2, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSbrAutocomplete:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->stop(Z)V

    const-string v5, "LocationBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadUrl for url:: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "chrome://newtab/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->commitPrefetchUrl(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    const-wide/16 v3, 0x0

    const-string v5, "chrome://newtab/#bookmarks"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v5

    const-string v6, "enable-samsung-bookmark-tag"

    invoke-virtual {v5, v6}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-wide/16 v3, 0x0

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance v2, Lorg/chromium/content/browser/LoadUrlParams;

    invoke-direct {v2, p1}, Lorg/chromium/content/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/chromium/content/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Lorg/chromium/content/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Lorg/chromium/content/browser/LoadUrlParams;->getTransitionType()I

    move-result v5

    if-nez v5, :cond_5

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lorg/chromium/content/browser/LoadUrlParams;->setTransitionType(I)V

    :goto_0
    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ContentView;->loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setUrlToPageUrl()V

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->requestFocus()Z

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v2, v8}, Lorg/chromium/content/browser/LoadUrlParams;->setTransitionType(I)V

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setUrlToPageUrl()V

    goto :goto_1
.end method

.method public modelPropertyChanged(ILjava/lang/Object;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    check-cast p2, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    check-cast p2, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->onSuggestionsReceived([Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public multiWindowOnClick()V
    .locals 0

    return-void
.end method

.method public navigateBack()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mContentview:Lorg/chromium/content/browser/ContentView;

    if-nez v1, :cond_1

    const-string v0, "SBROWSER"

    const-string v1, "onClick() toolbar_Forward - chromeview is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mContentview:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->canGoBack()Z

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mContentview:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->goBack()V

    goto :goto_0
.end method

.method public navigateForward()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mContentview:Lorg/chromium/content/browser/ContentView;

    if-nez v1, :cond_1

    const-string v0, "SBROWSER"

    const-string v1, "onClick() toolbar_Backward - chromeview is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mContentview:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->canGoForward()Z

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mContentview:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->goForward()V

    goto :goto_0
.end method

.method public notifyPageStopped()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->pageStopped()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->pageStopped(I)V

    :cond_1
    return-void
.end method

.method public notifyReaderEnabled()V
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "accessibility"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    const-string v0, "Reader Mode Enable"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const-string v8, "Reader Mode Enabled"

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f02004e

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    const-string v6, "Reader Mode Enabled"

    const/16 v7, 0x63a

    invoke-virtual {v5, v6, v7, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_0
    return-void

    :cond_1
    move v1, v6

    goto :goto_0
.end method

.method public notifyReloadLoad()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->pageReload()V

    return-void
.end method

.method public notifyTextChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTextChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTextChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTextChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTextChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$TextChangeListener;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$TextChangeListener;->locationBarTextChanged(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->onTabModelSelected(Z)V

    :cond_0
    return-void
.end method

.method public onLoadProgressChanged(Lcom/sec/android/app/sbrowser/common/Tab;I)V
    .locals 3

    move-object v0, p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-interface {v1, v2, p2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->updateLoadProgress(II)V

    return-void
.end method

.method public onLocationBarDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->clearAll()V

    return-void
.end method

.method public onNativeLibraryReady()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->onNativeLibraryReady()V

    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->sNotifications:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->onOrientationChange(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->searchEngineOnOrientationChange(I)V

    return-void
.end method

.method public onPageUrlChanged(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, p1, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->updateTabLoadingState(IZZ)V

    :cond_0
    return-void
.end method

.method public onRefineSuggestion(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public onSelection(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->isSavePage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getSavePageURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getSavePageURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getSavePageURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getPageTransition()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->loadUrl(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->isSavePage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSbrAutocomplete:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->getReadingListSuggestionProvider()Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getSavePageId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSBrowserMobileApplicationContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->updateReadingListRead(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->LOGTAG:Ljava/lang/String;

    const-string v2, "ReadingList read status updated sucessfully"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->onUrlSelection()V

    return-void

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReadingList read status for id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getSavePageId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getSavePageURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "failed to update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getPageTransition()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->loadUrl(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getsuggestionUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getPageTransition()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->loadUrl(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onSuggestionsReceived([Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->getSuggestionListSize()I

    move-result v14

    move-object/from16 v0, p1

    array-length v15, v0

    if-ne v14, v15, :cond_7

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v5, v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    invoke-virtual {v14, v5}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->getSuggestionListItemAt(I)Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    move-result-object v10

    const/4 v8, 0x0

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->getSuggestion()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    move-result-object v8

    :cond_2
    if-eqz v8, :cond_4

    aget-object v14, p1, v5

    invoke-virtual {v8, v14}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->getMatchedQuery()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getsuggestionUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    aget-object v14, p1, v5

    if-eqz v14, :cond_4

    aget-object v14, p1, v5

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    new-instance v15, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    aget-object v16, p1, v5

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;Ljava/lang/String;)V

    invoke-virtual {v14, v5, v15}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->setSuggestionList(ILcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;)V

    const/4 v4, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    aget-object v14, p1, v5

    if-eqz v14, :cond_6

    aget-object v14, p1, v5

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    new-instance v15, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    aget-object v16, p1, v5

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;Ljava/lang/String;)V

    invoke-virtual {v14, v5, v15}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->setSuggestionList(ILcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;)V

    :cond_6
    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v4, 0x1

    const/4 v3, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->clearSuggestions(Z)V

    const/4 v2, 0x0

    :goto_3
    const/4 v14, 0x5

    if-ge v2, v14, :cond_a

    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v2, v14, :cond_a

    aget-object v9, p1, v2

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    new-instance v15, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    invoke-direct {v15, v9, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->addToSuggestionListItems(Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSmartSuggestBarFlag()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getsuggestionUrl()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->simplifyUrlForDisplay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    const/4 v5, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSugTexts:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSugTexts:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartSuggestionItems:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSugTexts:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSmartSuggestBarFlag()Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartSuggestionItems:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartSuggestionItems:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x2

    if-le v14, v15, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartSuggestionItems:Ljava/util/List;

    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-interface/range {v15 .. v17}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->addSmartSuggestions(Ljava/util/List;)V

    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->isSuggestionListEmpty()Z

    move-result v14

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSbrAutocomplete:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSbrAutocomplete:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->stop(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->hideSuggestions()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->endPrefetch()V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->clearSuggestions(Z)V

    :cond_c
    :goto_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsAutoCompleteEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setDeleteKeyEnabled(Z)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIsSuggestionListVisited:Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mPrevString:Ljava/lang/String;

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mPrevString:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_11

    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mPrevString:Ljava/lang/String;

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mPrevString:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-eq v14, v15, :cond_11

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mPrevString:Ljava/lang/String;

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mPrevString:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-eq v14, v15, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mPrevString:Ljava/lang/String;

    if-eqz v14, :cond_11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mPrevString:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-le v14, v15, :cond_15

    :cond_11
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIsSuggestionListVisited:Z

    :goto_7
    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getIsDeleteKeyEnabled()Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIsSuggestionListVisited:Z

    if-nez v14, :cond_0

    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v2, v14, :cond_0

    aget-object v9, p1, v2

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getSuggestionType(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    move-result-object v12

    sget-object v14, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->HISTORY_URL:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    if-ne v12, v14, :cond_16

    aget-object v14, p1, v2

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getTypedString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->bufferString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->bufferString:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->bufferString:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    move-object v11, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->bufferString:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->selected:Z

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->bufferString:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->bufferString:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v14

    iget-object v14, v14, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v14

    iget-object v14, v14, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->bufferString:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->append(Ljava/lang/CharSequence;)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIsSuggestionListVisited:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v14

    iget-object v14, v14, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setSelection(II)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->bufferString:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mPrevString:Ljava/lang/String;

    :cond_12
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIsSuggestionListVisited:Z

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSmartSuggestionItems:Ljava/util/List;

    invoke-virtual {v14, v15}, Lcom/sec/android/app/sbrowser/toolbar/model/ToolbarModel;->addSmartSuggestions(Ljava/util/List;)V

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v14, v4, v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->invalidateSuggestionList(ZZ)V

    goto/16 :goto_6

    :cond_15
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIsSuggestionListVisited:Z

    goto/16 :goto_7

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8
.end method

.method protected onTabModelSelected(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIncognitoTab:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIncognitoTab:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIncognitoTab:Ljava/lang/Boolean;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_NEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->onTabSelected(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V

    goto :goto_0
.end method

.method public onTabPrefetchCommitted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->updateCurrentTabDisplayStatus(Z)V

    return-void
.end method

.method public onUrlFocusChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->onUrlFocusChange(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->finishUrlFocusChange(Z)V

    return-void
.end method

.method public onVoiceSearchResult(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSbrAutocomplete:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->onVoiceResults(Landroid/os/Bundle;)Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIsVoiceSearchInProgress:Z

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;->getMatch()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;->getMatch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;->getConfidence()F

    move-result v3

    const v4, 0x3f666666

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->setIsSuggestionComingFromVoiceSearchResult(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v3, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setSearchQuery(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->nativeQualifyPartialURLQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v5, v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->loadUrl(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "ToolbarController"

    const-string v4, "onVoiceSearchResult : text is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public overViewOnClick(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mWindowManagerIconClicked:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mOverviewListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mOverviewListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public prefetchUrl(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->prefetchUrl(Ljava/lang/String;I)V

    return-void
.end method

.method public reSetDefaultPage()V
    .locals 12

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v9}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v7

    const-string v9, "CscFeature_Web_DisableResetDefaultPage"

    invoke-static {v9}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDefaultPageCheck()Z

    move-result v4

    const/4 v9, 0x1

    if-eq v4, v9, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->hasFocus()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mReSetDialog:Landroid/app/AlertDialog;

    if-nez v9, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, ".*search.*"

    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "content://"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->getInstance()Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v6, v10}, Lcom/sec/android/app/sbrowser/history/model/MostVisitedModel;->isURLVisitCountGreaterThan(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v3, v6

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    const v10, 0x7f040078

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v9, 0x7f0a01eb

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v9, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$4;

    invoke-direct {v9, p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$4;-><init>(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)V

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0c01b1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0c01d1

    new-instance v11, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$7;

    invoke-direct {v11, p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$7;-><init>(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0c01d2

    new-instance v11, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$6;

    invoke-direct {v11, p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$6;-><init>(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$5;

    invoke-direct {v10, p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$5;-><init>(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mReSetDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public refreshTabCounter()V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v3

    const-string v4, "enable-samsung-multiwindow"

    invoke-virtual {v3, v4}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->updateTabCountDisplay(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->updateTabCountDisplay(I)V

    goto :goto_0
.end method

.method public reloadPage()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->pageReload()V

    return-void
.end method

.method public removeTextChangeListener(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$TextChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTextChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTextChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTextChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTextChangeListeners:Ljava/util/ArrayList;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public resetPlaceHolderBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->resetBitMap()V

    :cond_0
    return-void
.end method

.method public resetVoiceSearchInProgressFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIsVoiceSearchInProgress:Z

    return-void
.end method

.method public runAutoCompleteQuery(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSbrAutocomplete:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->stop(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSbrAutocomplete:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->start(Lorg/chromium/content/browser/ContentViewCore;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$8;-><init>(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->locationBarPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runDialog()V
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c002a

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    move v4, v3

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mReadercounter:J

    const-wide/16 v8, 0x2328

    cmp-long v0, v4, v8

    if-gez v0, :cond_2

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Ljava/util/Timer;

    invoke-direct {v7}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$3;

    invoke-direct {v0, p0, v6}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$3;-><init>(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;Landroid/os/Handler;)V

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->MINIMUM_WAITING_LIMIT:J

    invoke-virtual {v7, v0, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->LOGTAG:Ljava/lang/String;

    const-string v4, "runDialog: reader_view_not_present"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mReadercounter:J

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0002

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setReaderClick(Z)V

    goto :goto_0
.end method

.method protected searchEngineOnOrientationChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;->onOrientationChanged()V

    :cond_0
    return-void
.end method

.method public setActionMode(Z)V
    .locals 0

    sput-boolean p1, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->sActionMode:Z

    return-void
.end method

.method public setActionModeCallbackEditText(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setActionModeCallbackEditText(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;)V

    return-void
.end method

.method public setAutoCompleteProfile()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSbrAutocomplete:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSbrAutocomplete:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->setProfile(Lorg/chromium/content/browser/ContentViewCore;)V

    :cond_0
    return-void
.end method

.method public setBingSearchEngine(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;->setBingSearchEngine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBookmarkButtonClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mBookmarkButtonClicked:Z

    return-void
.end method

.method public setControl(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->onTabModelSelected(Z)V

    return-void
.end method

.method public setDeleteBtnFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->isDeleteBtnClicked:Z

    return-void
.end method

.method public setIsSuggestionComingFromVoiceSearchResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mIsSuggestionComingFromVoiceSearchResult:Z

    return-void
.end method

.method public setOnOverviewClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mOverviewListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSearchEngine()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;-><init>(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;->initialiseController(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public setSearchEngineFavIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setSearchEngineFavIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->selected:Z

    return-void
.end method

.method public setSwitchingToReader(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setSwitchingToReader(Z)V

    :cond_0
    return-void
.end method

.method public setTabSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->isTabSelected:Z

    return-void
.end method

.method public setTitleAndUrl(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    const v3, 0x7f0a019a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a017d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setToolBitmapCaptured(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBitmapCaptured:Z

    return-void
.end method

.method public setUiType(Landroid/view/View;)V
    .locals 1

    check-cast p1, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSBrowserMobileApplicationContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWindowManagerIconClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mWindowManagerIconClicked:Z

    return-void
.end method

.method public showHoverPreview()V
    .locals 0

    return-void
.end method

.method public showKeyBoardOnSelectSearchEngine()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->showKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public startAutoComplete(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSbrAutocomplete:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSbrAutocomplete:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->start(Lorg/chromium/content/browser/ContentViewCore;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->initAutoCompleteController()V

    goto :goto_0
.end method

.method public startCapturingToolBarBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->startCapturingToolBarBitmap(Z)V

    return-void
.end method

.method public startReaderActivity(Z)V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->isReaderActive:Z

    sget-object v4, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContentViewListAdapter ---"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Tab ---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reader Detection Object"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

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

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/sec/android/app/sbrowser/reader/ui/ReaderActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

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

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "isFromMainActivity"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "isForExtactMode"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mActivity:Landroid/app/Activity;

    const/16 v4, 0x14

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

.method public stopAutoComplete(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSbrAutocomplete:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->stop(Z)V

    return-void
.end method

.method public tabSelected(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mPreselectedTabIndex:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getRecognizeArticleResult()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getRecognizeArticleResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderVisible:Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->onTabSelected(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V

    goto :goto_0
.end method
