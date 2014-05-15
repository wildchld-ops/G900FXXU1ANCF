.class final Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$2;
.super Ljava/lang/Object;
.source "MemoryUsageMonitor.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->getDefaultDelegate(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$model:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$2;->val$model:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCachedNtpAndThumbnails()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$2;->val$model:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->clearCachedNtpAndThumbnails()V

    return-void
.end method

.method public getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$2;->val$model:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateDirtyMemoryOfRenderersKBytes()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$2;->val$model:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getPrivateDirtyMemoryOfRenderersKBytes()I

    move-result v0

    return v0
.end method

.method public registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    return-void
.end method

.method public saveStateAndDestroyTab(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$2;->val$model:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$2;->val$model:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getTabKillMe()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->saveStateAndDestroy()V

    :cond_1
    return-void
.end method

.method public unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    return-void
.end method
