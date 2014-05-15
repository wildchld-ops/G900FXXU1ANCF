.class public Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;
.super Ljava/lang/Object;
.source "UmaSessionStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/uma/UmaSessionStats$NotificationHandler;
    }
.end annotation


# static fields
.field private static final NOTIFICATIONS:[I = null

.field public static final PREF_CRASH_DUMP_UPLOAD:Ljava/lang/String; = "crash_dump_upload"

.field private static final TAG:Ljava/lang/String;

.field private static mNativeUmaSessionStats:I


# instance fields
.field private mComponentCallbacks:Landroid/content/ComponentCallbacks;

.field private mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field private mContext:Landroid/content/Context;

.field private mKeyboardConnected:Z

.field private mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->TAG:Ljava/lang/String;

    sput v2, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mNativeUmaSessionStats:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->NOTIFICATIONS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mKeyboardConnected:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats$NotificationHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats$NotificationHandler;-><init>(Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;Lcom/sec/android/app/sbrowser/uma/UmaSessionStats$1;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->recordPageLoadStats(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mKeyboardConnected:Z

    return p1
.end method

.method private getTabCountFromModel(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public static logRendererCrash()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ActivityStatus;->isPaused()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->nativeLogRendererCrash(Z)V

    return-void
.end method

.method public static mayUploadOnCurrentConnection(Landroid/content/Context;)Z
    .locals 10
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v7, 0x1

    const v8, 0x7f0c0074

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v8, 0x7f0c0075

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v8, 0x7f0c0076

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "crash_dump_upload"

    invoke-interface {v8, v9, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    :goto_0
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private native nativeInit()I
.end method

.method private static native nativeLogRendererCrash(Z)V
.end method

.method private native nativeUmaEndSession(I)V
.end method

.method private native nativeUmaResumeSession(I)V
.end method

.method private native nativeUpdateMetricsServiceState(Z)V
.end method

.method private recordPageLoadStats(I)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getUseDesktopUserAgent()Z

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public logAndEndSession()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->NOTIFICATIONS:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    sget v0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mNativeUmaSessionStats:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->nativeUmaEndSession(I)V

    return-void
.end method

.method public startNewSession(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V
    .locals 3

    const/4 v0, 0x1

    sget v1, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mNativeUmaSessionStats:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->nativeInit()I

    move-result v1

    sput v1, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mNativeUmaSessionStats:I

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats$1;-><init>(Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mKeyboardConnected:Z

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    sget-object v0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->NOTIFICATIONS:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    sget v0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mNativeUmaSessionStats:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->nativeUmaResumeSession(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMetricsServiceState(Landroid/content/Context;)V
    .locals 5

    const v3, 0x7f0c0074

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "crash_dump_upload"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->nativeUpdateMetricsServiceState(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
