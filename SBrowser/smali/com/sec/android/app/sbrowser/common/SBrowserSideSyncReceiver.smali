.class public Lcom/sec/android/app/sbrowser/common/SBrowserSideSyncReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SBrowserSideSyncReceiver.java"


# static fields
.field public static final SIDESYNC_COMMON_NO_URL:Ljava/lang/String; = "no url"

.field public static final SIDESYNC_COMMON_URL_REQUEST:Ljava/lang/String; = "com.sec.android.sidesync.common.URL_REQUEST"

.field public static final SIDESYNC_COMMON_URL_SHARE:Ljava/lang/String; = "com.sec.android.sidesync.common.URL_SHARE"


# instance fields
.field private mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field private mSBrowserMainActivityContextId:Ljava/lang/String;

.field private mSBrowserMobileApplicationContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.sec.android.sidesync.common.URL_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.sidesync.common.URL_SHARE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSideSyncReceiver;->mSBrowserMobileApplicationContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSideSyncReceiver;->mSBrowserMobileApplicationContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    if-nez v3, :cond_1

    const-string v3, "CONTENT"

    const-string v4, "no url"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSideSyncReceiver;->mSBrowserMobileApplicationContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getCurrentActiveSBrowserMainActivityContextIdString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSideSyncReceiver;->mSBrowserMainActivityContextId:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSideSyncReceiver;->mSBrowserMobileApplicationContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSideSyncReceiver;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSideSyncReceiver;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSideSyncReceiver;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSideSyncReceiver;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSideSyncReceiver;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    const-string v3, "CONTENT"

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v3, "CONTENT"

    const-string v4, "no url"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
