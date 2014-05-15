.class public Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;
.super Ljava/lang/Object;
.source "SBrowserEventBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventType;,
        Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$LazyHolder;,
        Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$NotificationLogger;,
        Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    }
.end annotation


# static fields
.field public static final EXTRACT_NEW_TAB_FINISH_LOAD:I = 0x29

.field public static final HTTP_POST_DOWNLOAD_FINISHED:I = 0x10

.field public static final READER_NEW_TAB_FINISH_LOAD:I = 0x13

.field public static final SBROWSER_APP_ON_DESTORY:I = 0x8

.field public static final SBROWSER_AUTO_LOGIN_DISABLED:I = 0xe

.field public static final SBROWSER_AUTO_LOGIN_RESULT:I = 0xf

.field public static final SBROWSER_BOOKMARK_DELETE:I = 0x23

.field public static final SBROWSER_BOOKMARK_SUGGESTIONS_CLEAR:I = 0x28

.field public static final SBROWSER_FAVICON_CONTORLLER_ALL_REQUESTS_PROCESSED:I = 0x1a

.field public static final SBROWSER_FAVICON_CONTROLLER_DATA_UPDATED:I = 0x1b

.field public static final SBROWSER_FIND_TOOLBAR_HIDE:I = 0xa

.field public static final SBROWSER_FIND_TOOLBAR_SHOW:I = 0x9

.field public static final SBROWSER_FULLSCREEN_SOFT_BITMAP_UPDATE:I = 0x26

.field public static final SBROWSER_HISTORY_CLEAR_URL_DONE:I = 0x16

.field public static final SBROWSER_HISTORY_COMMITTED:I = 0x20

.field public static final SBROWSER_HISTORY_UPDATE:I = 0x22

.field public static final SBROWSER_INFOBAR_REMOVED:I = 0x4

.field public static final SBROWSER_LOCAL_DOWNLOAD_QUEUED:I = 0x67

.field public static final SBROWSER_MULTI_INSTANCE_TAB_DESTROYED:I = 0x25

.field public static final SBROWSER_MULTI_TAB_SWITCH:I = 0x14

.field public static final SBROWSER_MULTI_WINDOW_TAB_CLOSED:I = 0x17

.field public static final SBROWSER_MULTI_WINDOW_UPDATE:I = 0x15

.field public static final SBROWSER_NATIVE_LIBRARY_READY:I = 0x7

.field public static final SBROWSER_NATIVE_LOAD_STOPPED:I = 0x11

.field public static final SBROWSER_NEW_TAB_PAGE_READY:I = 0x5

.field public static final SBROWSER_OUT_OF_MEMORY:I = 0xc

.field public static final SBROWSER_PAGE_LOAD_FINISHED:I = 0x2

.field public static final SBROWSER_PAGE_LOAD_URL:I = 0xd

.field public static final SBROWSER_PRINT_PAGE_SIZE_RECEIVED:I = 0x19

.field public static final SBROWSER_REMOTE_DOWNLOAD_QUEUED:I = 0x66

.field public static final SBROWSER_SAVEPAGE_SUGGESTION_CLEAR:I = 0x21

.field public static final SBROWSER_SCROLL_STARTED:I = 0x1f

.field public static final SBROWSER_SEARCHENGINE_FAVICCON_CHANGED:I = 0x24

.field public static final SBROWSER_SIDE_SWITCH_MODE_START:I = 0x3

.field public static final SBROWSER_SOFT_BITMAP_UPDATE:I = 0x1c

.field public static final SBROWSER_TAB_CLOSED:I = 0x68

.field public static final SBROWSER_TAB_CREATED:I = 0x1

.field public static final SBROWSER_TAB_CREATING:I = 0xb

.field public static final SBROWSER_TAB_MANAGER_ACTIVITY_STATUS:I = 0x18

.field public static final SBROWSER_TEMPLATE_URL_SERVICE_LOADED:I = 0x6

.field public static final SBROWSER_TOUCHICON_ALL_REQUESTS_PROCESSED:I = 0x1d

.field public static final SBROWSER_TOUCHICON_CONTROLLER_DATA_UPDATED:I = 0x1e

.field public static final SBROWSER_VIDEO_FULLSCREEN_RESET_REQUEST:I = 0x27

.field private static final TAG:Ljava/lang/String;

.field private static sNotificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBroadcaster:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;

.field private mIsDestroyed:Z

.field private mNotificationLogger:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$1;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mBroadcaster:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$300()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->getNotificationTypeMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static broadcastNotification(ILandroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->getInstance()Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mBroadcaster:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->broadcast(Landroid/os/Message;)V

    return-void
.end method

.method public static broadcastSBrowserImmediateNotification(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static broadcastSBrowserImmediateNotification(ILandroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->getInstance()Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mBroadcaster:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->broadcast(Landroid/os/Message;Z)V

    return-void
.end method

.method public static broadcastSBrowserNotification(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserNotification(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static broadcastSBrowserNotification(II)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->getInstance()Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mBroadcaster:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->broadcast(Landroid/os/Message;)V

    return-void
.end method

.method public static broadcastSBrowserNotification(ILandroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->getInstance()Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mBroadcaster:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->broadcast(Landroid/os/Message;)V

    return-void
.end method

.method public static disable()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->getInstance()Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mIsDestroyed:Z

    return-void
.end method

.method public static enable()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->getInstance()Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mIsDestroyed:Z

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$LazyHolder;->access$100()Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getNotificationTypeMap()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    const-class v11, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    monitor-enter v11

    :try_start_0
    sget-object v10, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->sNotificationMap:Ljava/util/Map;

    if-nez v10, :cond_1

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v10, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->sNotificationMap:Ljava/util/Map;

    const-class v10, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    const-class v10, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventType;

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    move v9, v3

    sget-object v7, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->sNotificationMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/RuntimeException;

    const-string v12, "Duplicate SBrowserEventType defined"

    invoke-direct {v10, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v5

    :try_start_2
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_3
    sget-object v10, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->sNotificationMap:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v11

    return-object v10
.end method

.method static getNotificationTypes()[Ljava/lang/Integer;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->getNotificationTypeMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Integer;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    check-cast v2, [Ljava/lang/Integer;

    return-object v2
.end method

.method public static registerForNotification(ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->getInstance()Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    move-result-object v2

    iget-object v0, v2, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mBroadcaster:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;->getHandler()Landroid/os/Handler;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;->access$200(Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p0}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->request(ILandroid/os/Handler;I)V

    return-void
.end method

.method public static registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->getInstance()Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    move-result-object v6

    iget-object v4, v6, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mBroadcaster:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;

    move-object v0, p0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;->getHandler()Landroid/os/Handler;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;->access$200(Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v3, v5, v3}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->request(ILandroid/os/Handler;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static unregisterForNotification(ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->getInstance()Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    move-result-object v2

    iget-object v0, v2, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mBroadcaster:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;->getHandler()Landroid/os/Handler;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;->access$200(Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p0}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->cancelRequest(ILandroid/os/Handler;I)V

    return-void
.end method

.method public static unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->getInstance()Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    move-result-object v6

    iget-object v4, v6, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mBroadcaster:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;

    move-object v0, p0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;->getHandler()Landroid/os/Handler;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;->access$200(Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v3, v5, v3}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->cancelRequest(ILandroid/os/Handler;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public disableLogging()V
    .locals 7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mNotificationLogger:Landroid/os/Handler;

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->getNotificationTypes()[Ljava/lang/Integer;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mBroadcaster:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mNotificationLogger:Landroid/os/Handler;

    invoke-virtual {v4, v3, v5, v3}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->cancelRequest(ILandroid/os/Handler;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mNotificationLogger:Landroid/os/Handler;

    goto :goto_0
.end method

.method public enableLogging()V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mNotificationLogger:Landroid/os/Handler;

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v4, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$NotificationLogger;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$NotificationLogger;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mNotificationLogger:Landroid/os/Handler;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->getNotificationTypes()[Ljava/lang/Integer;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mBroadcaster:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mNotificationLogger:Landroid/os/Handler;

    invoke-virtual {v5, v3, v6, v3}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->request(ILandroid/os/Handler;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected getBroadcasterForTest()Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mBroadcaster:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;

    return-object v0
.end method
