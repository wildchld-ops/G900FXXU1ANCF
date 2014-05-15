.class public Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContentViewListAdapter.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;
.implements Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$7;,
        Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;,
        Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ClearBrowsingDataActivityStarter;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BOOKMARKS_URL:Ljava/lang/String; = "chrome://newtab/#bookmarks"

.field private static final DEFAULT_VALUE:I = 0x0

.field private static final FIRST_INSTANCE_INDEX:I = 0x1

.field private static final HANDLER_ACTIVITY_ON_RESUME:I = 0x2

.field private static final HANDLER_CREATE_TAB:I = 0x0

.field private static final HANDLER_SHOW_TAB:I = 0x1

.field private static final INCOGNITO_TAB_CONTROL_INDEX:I = 0x1

.field private static final IS_INDEX_CHANGED:Ljava/lang/String; = "is_index_changed"

.field private static final LAST_ID:Ljava/lang/String; = "index"

.field private static final MAX_TAB_COUNTER:I = 0x32

.field public static final MOST_VISITED_URL:Ljava/lang/String; = "chrome://newtab/#most_visited"

.field private static final NORMAL_TAB_CONTROL_INDEX:I = 0x0

.field private static final NOTIFICATIONS:[I = null

.field public static final NTP_CACHED_TAG:Ljava/lang/String; = "#cached_ntp"

.field private static final NTP_CACHE_CREATE_DELAY_MS:J = 0x12cL

.field private static final NTP_CACHE_CREATE_DELAY_URL_LAUNCH_MS:J = 0xea60L

.field private static final NTP_PRIME_BITMAP_CAPTURE_DELAY_MS:J = 0x3e8L

.field public static final NTP_URL:Ljava/lang/String; = "chrome://newtab/"

.field private static final NUMBER_OF_CONCURRENT_EXECUTORS:I = 0x1

.field private static final ON_INDEX_SET:I = 0x3

.field private static final PARENT_ID:Ljava/lang/String; = "parentId"

.field private static final PARENT_INCOGNITO:Ljava/lang/String; = "parentIsIncognito"

.field protected static final POSITION:Ljava/lang/String; = "position"

.field private static final SECOND_INSTANCE_INDEX:I = 0x2

.field public static final SYNCED_URL:Ljava/lang/String; = "chrome://newtab/#open_tabs"

.field private static final TAG:Ljava/lang/String; = "ContentViewListAdapter"

.field private static final UNKNOWN_APP_ID:Ljava/lang/String; = "com.sec.android.app.sbrowser.unknown_app"

.field private static final URL:Ljava/lang/String; = "url"

.field public static final WELCOME_URL:Ljava/lang/String; = "chrome://welcome/"

.field public static sAllowCreateCachedNtp:Z

.field private static shouldLoadFromDB:Z


# instance fields
.field private mActiveControlIndex:I

.field private final mActivity:Landroid/app/Activity;

.field private final mAllTabsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mClearBrowsingDataActivityStarter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ClearBrowsingDataActivityStarter;

.field private final mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

.field private mContentView:Lorg/chromium/content/browser/ContentView;

.field private mControlType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

.field private mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

.field private mEnteredMultiWindow:Z

.field private mExecutorThread:Lcom/sec/android/app/sbrowser/common/ExecutorThread;

.field private mHandler:Landroid/os/Handler;

.field private mInOverviewMode:Z

.field private mIsCloseAllTabs:Z

.field public mIsFromExternalApp:Z

.field private mIsTabCreationInProcess:Z

.field private mLaunchType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

.field private mMaxTabCountReachedAlertDialog:Landroid/app/AlertDialog;

.field private mNextId:I

.field private mNextTabToolBarDisplayStateShown:Z

.field private final mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

.field private mNtpCacheCreateDelayMs:J

.field private final mOrderController:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;

.field private mOtherInstanceRestorableTabCounter:I

.field private mPreloadWebViewContainer:Landroid/view/ViewGroup;

.field mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

.field private mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;

.field private mTabCreated:Z

.field private mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

.field private final mTabSaver:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

.field private mTabToClose:Lcom/sec/android/app/sbrowser/common/Tab;

.field private mTabToNotify:Lcom/sec/android/app/sbrowser/common/Tab;

.field private mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field private selectionType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

.field private tabCreationWaiting:Z

.field private thumbnailHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->$assertionsDisabled:Z

    sput-boolean v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->sAllowCreateCachedNtp:Z

    sput-boolean v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->shouldLoadFromDB:Z

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->NOTIFICATIONS:[I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :array_0
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;ZZ)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mMaxTabCountReachedAlertDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabCreated:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mAllTabsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActiveControlIndex:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNextId:I

    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNtpCacheCreateDelayMs:J

    new-instance v2, Lorg/samsung/content/sbrowser/SynchronizeObj;

    invoke-direct {v2}, Lorg/samsung/content/sbrowser/SynchronizeObj;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mLaunchType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsTabCreationInProcess:Z

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mExecutorThread:Lcom/sec/android/app/sbrowser/common/ExecutorThread;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentView:Lorg/chromium/content/browser/ContentView;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->tabCreationWaiting:Z

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->selectionType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControlType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToNotify:Lcom/sec/android/app/sbrowser/common/Tab;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->thumbnailHandler:Landroid/os/Handler;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToClose:Lcom/sec/android/app/sbrowser/common/Tab;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsCloseAllTabs:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mOtherInstanceRestorableTabCounter:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNextTabToolBarDisplayStateShown:Z

    new-instance v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_2

    :goto_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActiveControlIndex:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CUSTOM_TAB_LIST_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v0

    invoke-direct {v1, p0, v2, v0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabSaver:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mOrderController:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;

    if-eqz p4, :cond_1

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNtpCacheCreateDelayMs:J

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ClearBrowsingDataActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mClearBrowsingDataActivityStarter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ClearBrowsingDataActivityStarter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ClearBrowsingDataActivityStarter;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ClearBrowsingDataActivityStarter;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mClearBrowsingDataActivityStarter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ClearBrowsingDataActivityStarter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IZIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabClosed(IZIZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsCloseAllTabs:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsCloseAllTabs:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToClose:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToClose:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNextTabToolBarDisplayStateShown:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToNotify:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToNotify:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->selectionType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->selectionType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControlType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControlType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SynchronizeObj;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->tabCreationWaiting:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->tabCreationWaiting:Z

    return p1
.end method

.method static synthetic access$208(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNextId:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/ExecutorThread;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mExecutorThread:Lcom/sec/android/app/sbrowser/common/ExecutorThread;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabSelected(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->showTabIfSurfaceReady()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->thumbnailHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsTabCreationInProcess:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTabId()I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabCreating(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;ZZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mOrderController:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IIIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabMoved(IIIZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IILjava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabCreated(IILjava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mPreloadWebViewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNtpCacheCreateDelayMs:J

    return-wide v0
.end method

.method static synthetic access$3402(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;J)J
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNtpCacheCreateDelayMs:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mAllTabsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)I
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTransitionType(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3802(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mLaunchType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabCreated:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->handleAutoLoginResult(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->handleAutoLoginDisabled()V

    return-void
.end method

.method static synthetic access$4602(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mOtherInstanceRestorableTabCounter:I

    return p1
.end method

.method static synthetic access$4900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/chromium/content/browser/ContentView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentView:Lorg/chromium/content/browser/ContentView;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lorg/chromium/content/browser/ContentView;)Lorg/chromium/content/browser/ContentView;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentView:Lorg/chromium/content/browser/ContentView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mInOverviewMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->blockingNotifyTabClosing(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/TabListWrapper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabSaver:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    return-object v0
.end method

.method private blockingNotifyModelSelected()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "incognito"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->isIncognitoSelected()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private blockingNotifyTabClosing(IZ)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tabId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "animate"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMemoryUsageMonitor()Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMemoryUsageMonitor()Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->tabClosing(I)V

    :cond_0
    return-void
.end method

.method private getCurrentTabId()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    goto :goto_0
.end method

.method private static getTransitionType(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$7;->$SwitchMap$com$sec$android$app$sbrowser$common$SBrowserTabControl$TabLaunchType:[I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-boolean v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x6

    :cond_0
    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getView(I)Lorg/chromium/content/browser/ContentView;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    goto :goto_0
.end method

.method private handleAutoLoginDisabled()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    invoke-interface {v5, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->dismissAutoLogins()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleAutoLoginResult(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_3

    invoke-interface {v5, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v6

    invoke-virtual {v6, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->dismissAutoLogins(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private handleNewTabPageReady(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    sget-boolean v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabOrCachedNtpById(I)Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$4300(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->onNtpResourcesLoaded(Lcom/sec/android/app/sbrowser/common/Tab;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$4400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;Lcom/sec/android/app/sbrowser/common/Tab;)V

    goto :goto_0
.end method

.method private handleOnOverviewModeHidden()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mInOverviewMode:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mPreloadWebViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mPreloadWebViewContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private handleOnOverviewModeShown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mInOverviewMode:Z

    return-void
.end method

.method private handleOnPageLoadStopped(I)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    sget-boolean v3, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    if-eqz v1, :cond_1

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->createDelayedCacheNtp(I)V
    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$4500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;I)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    aget-object v3, v3, v0

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    aget-object v3, v3, v0

    invoke-interface {v3, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabSaver:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->addTabToSaveQueue(Lcom/sec/android/app/sbrowser/common/Tab;I)V

    :cond_4
    return-void
.end method

.method private notifyTabClosed(IZIZ)V
    .locals 6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "tabId"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "incognito"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "nextId"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "nextIncognito"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "SBrowserMainActivityContextId"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

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

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "TAB_ID"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "IS_DELETED"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    const/16 v5, 0xbb9

    invoke-direct {v3, v4, v5, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->onTabClose(ILandroid/os/Bundle;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->refreshTabCounter()V

    const/16 v3, 0x68

    invoke-static {v3, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastNotification(ILandroid/os/Bundle;)V

    return-void
.end method

.method private notifyTabCreated(IILjava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZZ)V
    .locals 9

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v6, "tabId"

    invoke-virtual {v2, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "sourceTabId"

    invoke-virtual {v2, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "type"

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "url"

    invoke-virtual {v2, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "x"

    invoke-virtual {v2, v6, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "y"

    invoke-virtual {v2, v6, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "incognito"

    move/from16 v0, p7

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "willBeSelected"

    move/from16 v0, p8

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "SBrowserMainActivityContextId"

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ContentViewListAdapter.java"

    const-string v7, "sending broadcast for Tab created "

    invoke-static {v6, v7}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    invoke-static {v6, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastNotification(ILandroid/os/Bundle;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/sec/android/app/sbrowser/common/UI;->onTabCreated(Landroid/os/Bundle;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->refreshTabCounter()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "TAB_ID"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "TAB_URL"

    invoke-virtual {v5, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "TAB_ACTIVATE"

    const-string v7, "false"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "IS_INCOGNITO"

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "TAB_INDEX"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabIndexById(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getSbrTabBridge()Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v6, "TAB_FAV_ICON"

    new-instance v7, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lorg/samsung/chrome/browser/SbrTabBridge;->getFavIcon()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    const-string v6, "TAB_TITLE"

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    const/16 v8, 0xbb8

    invoke-direct {v6, v7, v8, v5}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabCreated:Z

    return-void
.end method

.method private notifyTabCreating(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;ZZ)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tabId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "sourceTabId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "type"

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "incognito"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "willBeSelected"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0xb

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(ILandroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTabSwitchAnimator()Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTabSwitchAnimator()Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p5, v2}, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->tabCreating(ZLjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMemoryUsageMonitor()Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMemoryUsageMonitor()Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    move-result-object v1

    invoke-virtual {v1, p1, p5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->tabCreating(IZ)V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabCreated:Z

    return-void
.end method

.method private notifyTabMoved(IIIZ)V
    .locals 6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "tabId"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "fromPosition"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "toPosition"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "incognito"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

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

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "TAB_ID"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "TAB_ACTIVATE"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "IS_INCOGNITO"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "TAB_INDEX"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p1, :cond_0

    new-instance v3, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    const/16 v5, 0xbb9

    invoke-direct {v3, v4, v5, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private notifyTabSelected(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;Z)V
    .locals 7

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "tabId"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "lastId"

    invoke-virtual {v1, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "type"

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "incognito"

    invoke-virtual {v1, v4, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v4

    const-string v5, "enable-samsung-multiwindow"

    invoke-virtual {v4, v5}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/sec/android/app/sbrowser/common/UI;->onTabSelected(Landroid/os/Bundle;)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->setControl(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v4

    invoke-interface {v4, p3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->tabSelected(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_2

    :cond_2
    const-string v4, "tab"

    const-string v5, "called from  list adapted"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/UI;->getFindTextToolbarWrapper()Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/UI;->getFindTextToolbarWrapper()Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->stopFindAndExitWhenShown()V

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTabSwitchAnimator()Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTabSwitchAnimator()Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->tabSelected(I)V

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMemoryUsageMonitor()Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMemoryUsageMonitor()Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->tabSelected(I)V

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v4, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->onTabSelected(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "TAB_ID"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "TAB_ACTIVATE"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "IS_INCOGNITO"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "TAB_INDEX"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabIndexById(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p1, :cond_8

    new-instance v4, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    const/16 v6, 0xbbd

    invoke-direct {v4, v5, v6, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_8
    return-void
.end method

.method private showTabIfSurfaceReady()V
    .locals 4

    const-string v1, "ContentViewListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLOGS:SHOW() called, Surface not ready, Wait(), tab"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$6;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mExecutorThread:Lcom/sec/android/app/sbrowser/common/ExecutorThread;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/ExecutorThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public allTabsLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mAllTabsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public areAllTabsLoaded()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->areAllTabsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bringToFrontOrLaunchUrl(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->setIndex(I)V

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->launchUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clearCachedNtpAndThumbnails()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->clearCachedNtpAndThumbnails()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$4800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)V

    return-void
.end method

.method public clearEncryptedState(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabSaver:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->clearEncryptedState(I)V

    return-void
.end method

.method public clearState(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabSaver:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->clearState(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    const/16 v2, 0xbc4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public closeAllTabs()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->closeAllTabs()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->closeAllTabs()V

    :cond_0
    return-void
.end method

.method public closeTab(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->closeTab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    :cond_0
    return-void
.end method

.method public closeTab(Lcom/sec/android/app/sbrowser/common/Tab;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v0

    const-string v1, "disable-deferred-tab-close"

    invoke-virtual {v0, v1}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->deferredCloseTab(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->closeTab(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    goto :goto_0
.end method

.method public closeTabByID(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->closeTab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    :cond_0
    return-void
.end method

.method public closeTabByIndex(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->closeTabByIndex(I)V

    :cond_0
    return-void
.end method

.method public closeTabFromTab(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->closeTabFromTab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    :cond_0
    return-void
.end method

.method public closeTabReleasingContents(Lcom/sec/android/app/sbrowser/common/Tab;Z)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->closeTabReleasingContents(Lcom/sec/android/app/sbrowser/common/Tab;Z)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeTabUponNativeConfirmation()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v0, -0x8000

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToClose:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToClose:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isSavedAndViewDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToClose:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPid()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToClose:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToClose:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->destroy()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToClose:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->deleteState(Landroid/app/Activity;I)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToClose:Lcom/sec/android/app/sbrowser/common/Tab;

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->purgeRenderProcessNativeMemory(I)V

    return-void

    :cond_2
    const-string v1, "ContentViewListAdapter"

    const-string v2, "closeTabUponNativeConfirmation: mTabToClose is NULL"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public commitPrefetchUrl(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->commitPrefetchUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createDragAndDropTab(II)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createDragAndDropTab(II)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 6

    const/16 v5, 0x32

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->onNativeLibraryReady()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getOtherInstanceRestorableTabCounter()I

    move-result v0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    if-lt v0, v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getOtherInstanceRestorableTabCounter()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->displayMaximumTabsBeforeOtherInstanceTabsRestoreAlertDialog()V

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getGlobalTabCounter()I

    move-result v0

    if-lt v0, v5, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    const v2, 0x7f0c00e9

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->displayMaximumTabsAlertDialog(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS_OTHERS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    aget-object v0, v0, v3

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    goto :goto_0
.end method

.method public createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZ)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->onNativeLibraryReady()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getOtherInstanceRestorableTabCounter()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    const/16 v2, 0x32

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getOtherInstanceRestorableTabCounter()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->displayMaximumTabsBeforeOtherInstanceTabsRestoreAlertDialog()V

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZ)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public createTabWithNativeContents(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IILjava/lang/String;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createTabWithNativeContents(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IILjava/lang/String;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createTabWithNativeContents(IILjava/lang/String;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createTabWithNativeContents(IILjava/lang/String;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deferredCloseTab(Lcom/sec/android/app/sbrowser/common/Tab;Z)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->destroy()V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabSaver:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->destroy()V

    sget-object v4, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->NOTIFICATIONS:[I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->destroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    :cond_2
    return-void
.end method

.method public endPrefetch()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->endPrefetch()V

    :cond_0
    return-void
.end method

.method public fileReadRestorableTabCountByInstanceId(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$3;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getBrowserMainActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    aget-object v0, v2, v1

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActiveControlIndex:I

    aget-object v0, v1, v2

    :cond_0
    return-object v0
.end method

.method public getCurrentControlIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActiveControlIndex:I

    return v0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Lorg/chromium/content/browser/ContentView;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->index()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    goto :goto_0
.end method

.method public getGlobalCount()I
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v0

    :goto_1
    add-int v2, v1, v0

    return v2

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method getInstantTab()Lcom/sec/android/app/sbrowser/common/InstantTab;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$4700(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)Lcom/sec/android/app/sbrowser/common/InstantTab;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxTabCounter()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public getMultiWindowMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mEnteredMultiWindow:Z

    return v0
.end method

.method public getMultiWindowRestored()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getMultiWindowRestored()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextTabIfClosed(I)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getNextTabIfClosed(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOtherInstanceRestorableTabCounter()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mOtherInstanceRestorableTabCounter:I

    return v0
.end method

.method public getPrefetchedUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getPrefetchedUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrivateDirtyMemoryOfRenderersKBytes()I
    .locals 10

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v8, v0, v2

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v9

    if-ge v1, v9, :cond_1

    invoke-interface {v8, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPrivateSizeKBytes()I

    move-result v9

    add-int/2addr v4, v9

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public getRestoreTabCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getRestoreTabCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getRestoredTabCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabSaver:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->getRestoredTabCount()I

    move-result v0

    return v0
.end method

.method public getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabFromView(Lorg/chromium/content/browser/ContentView;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabFromView(Lorg/chromium/content/browser/ContentView;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabIndexById(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTabIndexByUrl(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexByUrl(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTabListWrapper()Lcom/sec/android/app/sbrowser/common/TabListWrapper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getView(I)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    return-object v0
.end method

.method public incrementRestoreTabCount()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->incrementRestoreTabCount()V

    :cond_0
    return-void
.end method

.method public index()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->index()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public indexOf(Lcom/sec/android/app/sbrowser/common/Tab;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->indexOf(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isIncognito()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncognitoSelected()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActiveControlIndex:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNextTabToolbarShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNextTabToolBarDisplayStateShown:Z

    return v0
.end method

.method public isTabCreated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabCreated:Z

    return v0
.end method

.method public isTabCreationInProcess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsTabCreationInProcess:Z

    return v0
.end method

.method public isTabCreationWaiting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->tabCreationWaiting:Z

    return v0
.end method

.method public launchNTP()Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->launchNTP()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->launchUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchUrlFromExternalApp(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadState(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabSaver:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->loadState(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNextId:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNextId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->shouldLoadFromDB:Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getMultiWindowRestored()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNextId:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNextId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNextId:I

    :cond_1
    return-void
.end method

.method public moveTab(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->moveTab(II)V

    :cond_0
    return-void
.end method

.method public newTabPageReady(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->handleNewTabPageReady(I)V

    return-void
.end method

.method public notifyActivityState(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v1, :cond_0

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    if-nez v1, :cond_1

    const-string v1, "ContentViewListAdapter"

    const-string v2, "APPLOGS: notifyActivityState mSbrContentViewRenderView is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->isSurfaceReady()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->onActivityResume()V

    goto :goto_0

    :cond_2
    const-string v1, "ContentViewListAdapter"

    const-string v2, "APPLOGS:notifyActivityState - surface not ready, doWait()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$5;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mExecutorThread:Lcom/sec/android/app/sbrowser/common/ExecutorThread;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/ExecutorThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->onActivityPause()V

    goto :goto_0
.end method

.method public onActivityDestroyed()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->destroy()V

    return-void
.end method

.method public onNativeLibraryReady()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)V

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)V

    aput-object v1, v0, v3

    :cond_0
    const-string v0, "ContentViewListAdapter.java"

    const-string v1, "Calling Copy Constructor of TabSyncAdapter"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getCloudServicesFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->NOTIFICATIONS:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    return-void
.end method

.method public onPageUrlChanged(I)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "TAB_ID"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "TAB_URL"

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "TAB_INDEX"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "TAB_TITLE"

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getSbrTabBridge()Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "TAB_FAV_ICON"

    new-instance v5, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lorg/samsung/chrome/browser/SbrTabBridge;->getFavIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    new-instance v4, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    const/16 v6, 0xbb9

    invoke-direct {v4, v5, v6, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onSetIndex(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->onSetIndex(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;IZ)V

    :cond_0
    return-void
.end method

.method public openNewTab(Ljava/lang/String;IZ)V
    .locals 8

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    const/4 v5, 0x0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v5

    :cond_0
    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v3

    move-object v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZ)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    :cond_1
    return-void
.end method

.method public overrideScroll(FFFF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pageStopped(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->handleOnPageLoadStopped(I)V

    return-void
.end method

.method public prefetchUrl(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->prefetchUrl(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected prepareNewTabCreation(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    const-string v2, "parentIsIncognito"

    invoke-virtual {v6, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v2, "position"

    invoke-virtual {v6, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v2, "parentId"

    invoke-virtual {v6, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v2, "url"

    const-string v7, ""

    invoke-virtual {v6, v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mLaunchType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->preTabCreation(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZ)Lcom/sec/android/app/sbrowser/common/Tab;

    return-void
.end method

.method public purgeRenderProcessNativeMemory(I)V
    .locals 0

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public removeSynchronizationObject()V
    .locals 2

    const-string v0, "ContentViewListAdapter"

    const-string v1, "APPLOGS:removeSynchronizationObject"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->setSynchronizationObject(Lorg/samsung/content/sbrowser/SynchronizeObj;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ContentViewListAdapter"

    const-string v1, "APPLOGS:removeSynchronizationObject mSbrContentViewRenderView is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetOtherInstanceRestorableTabCounter()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mOtherInstanceRestorableTabCounter:I

    return-void
.end method

.method public resetShouldLoadFromDB()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->shouldLoadFromDB:Z

    return-void
.end method

.method public saveState(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabSaver:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->tabSavedState(I)V

    return-void
.end method

.method public selectControl(Z)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActiveControlIndex:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActiveControlIndex:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->index()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->blockingNotifyModelSelected()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClearBrowsingDataActivityStarter(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ClearBrowsingDataActivityStarter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mClearBrowsingDataActivityStarter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ClearBrowsingDataActivityStarter;

    return-void
.end method

.method public setIndex(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    :cond_0
    return-void
.end method

.method public setMultiWindowMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mEnteredMultiWindow:Z

    return-void
.end method

.method public setMultiWindowRestored(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setMultiWindowRestored(Z)V

    :cond_0
    return-void
.end method

.method public setPreloadWebViewContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mPreloadWebViewContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setSynchronizationObject(Lorg/samsung/content/sbrowser/SbrContentViewRenderView;)V
    .locals 2

    const-string v0, "ContentViewListAdapter"

    const-string v1, "APPLOGS:setSynchronizationObject"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->setSynchronizationObject(Lorg/samsung/content/sbrowser/SynchronizeObj;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/ExecutorThread;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/ExecutorThread;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mExecutorThread:Lcom/sec/android/app/sbrowser/common/ExecutorThread;

    return-void
.end method

.method public setTabListWrapper(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->addNewTab(IZ)V

    :cond_0
    return-void
.end method

.method public shouldLoadFromDB()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->shouldLoadFromDB:Z

    return v0
.end method

.method public supportIntentFilters()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->supportIntentFilters()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tabStateLoaded()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mAllTabsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    sget-boolean v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    if-eqz v0, :cond_1

    :cond_1
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    return-void
.end method
