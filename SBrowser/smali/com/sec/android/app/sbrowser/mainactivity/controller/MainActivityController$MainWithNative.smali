.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;
.super Ljava/lang/Object;
.source "MainActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainWithNative"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;
    }
.end annotation


# instance fields
.field private final mNativeProcessingDemon:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$1;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->mNativeProcessingDemon:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->onDestroy()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->onPause()V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->onResume()V

    return-void
.end method

.method private createNewTab(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v6, "VerificationLog"

    const-string v7, "MAinActivityCtrler - createNewTab - start"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_MENU:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez p1, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->processVoiceResults(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->handleWebSearchIntent(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_3

    if-nez p1, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->shouldIgnoreIntents(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "com.android.browser.application_id"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "create_new_tab"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v6

    invoke-interface {v6, v4, v5, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->launchUrlFromExternalApp(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/common/Tab;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->handleWebSearchIntent(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v6

    const-string v7, "enable-samsung-multiwindow"

    invoke-virtual {v6, v7}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "CscFeature_Web_SupportOfflineStartupPage"

    invoke-static {v6}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v9, :cond_7

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    :cond_4
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCount()I

    move-result v6

    if-gt v6, v9, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getRestoreTabCount()I

    move-result v6

    if-nez v6, :cond_0

    const-string v4, "http://www.google.com"

    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v6

    invoke-interface {v6, v4, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_6
    const-string v6, "VerificationLog"

    const-string v7, "MAinActivityCtrler - createNewTab - end"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v4, "http://www.google.com"

    goto :goto_1
.end method

.method private createSearchEngineListener()V
    .locals 0

    return-void
.end method

.method private loadOrClearPreviousState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/UI;->loadOrClearPreviousState(Landroid/os/Bundle;)V

    return-void
.end method

.method private onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    new-instance v9, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->getDefaultMaxActiveTabs(Landroid/content/Context;)I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->getDefaultDelegate(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;-><init>(ILcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;)V

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMemoryUsageMonitor:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;
    invoke-static {v8, v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4902(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;)Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->onNativeLibraryReady()V

    const-string v8, "CscFeature_Web_OverrideUserAgent"

    invoke-static {v8}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "CscFeature_Web_SetUserAgent"

    invoke-static {v8}, Lorg/samsung/base/Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_TD"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "CscFeature_Web_SetUserAgent"

    invoke-static {v8}, Lorg/samsung/base/Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setUserAgent(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getReLoadTabsFalg()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->loadOrClearPreviousState(Landroid/os/Bundle;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v8

    const-string v9, "enable-samsung-multiwindow"

    invoke-virtual {v8, v9}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/common/UI;->createNewMultiWindowTab()V

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->createNewTab(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$5000()[I

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$5100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->createSearchEngineListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->setSearchEngine()V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyDataSetChanged()V

    const/4 v8, 0x7

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserNotification(I)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/common/UI;->registerForNotification()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    new-instance v10, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v10, v8}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrint:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;
    invoke-static {v9, v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$2502(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;)Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    const-string v8, "CMCC"

    const-string v9, "CscFeature_Web_EnableMultipleApn4"

    invoke-static {v9}, Lorg/samsung/base/Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f060004

    invoke-static {v8, v9, v12}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDefaultapn()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.BROWSER_APN_CHANGED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "apn_setting"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v8

    invoke-virtual {v8, v12}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setFontBoostingModeEnabled(Z)V

    :cond_4
    const-string v8, "CscFeature_Web_DisableNetworkLinkPrediction"

    invoke-static {v8}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v8

    const-string v9, "Preferences_By_CSC"

    invoke-virtual {v8, v9, v12}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "Check_Network_Predictions"

    invoke-interface {v7, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v8, "network_predictions"

    invoke-interface {v2, v8, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v8

    invoke-virtual {v8, v12}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setNetworkPredictionEnabled(Z)V

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v8, "Check_Network_Predictions"

    const/4 v9, 0x1

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    return-void
.end method

.method private onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->mNativeProcessingDemon:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->onDestroy()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->access$5200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;)V

    return-void
.end method

.method private onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->mNativeProcessingDemon:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->onPause()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->access$5300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getReLoadTabsFalg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReusableLocalInstanceId:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReusableLocalInstanceId:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->saveState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReusableLocalInstanceId:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReusableLocalInstanceId:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->saveState(I)V

    goto :goto_0
.end method

.method private onResume()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->mNativeProcessingDemon:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->onResume()V
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->access$5400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getNetworkConnectivityReceiver()Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver;->registerReceiver(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.app.sbrowser.GPU_PROFILER_START"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.sbrowser.GPU_PROFILER_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    new-instance v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$3;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;)V

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$5502(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$5500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->onMainActivityResume()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private processVoiceResults(Landroid/content/Intent;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "Main"

    const-string v8, "processVoiceResults"

    invoke-static {v7, v8}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return v5

    :cond_0
    const-string v7, "android.speech.extras.VOICE_SEARCH_RESULT_STRINGS"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v7

    const-string v8, "enable-test-intents"

    invoke-virtual {v7, v8}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "android.speech.extras.VOICE_SEARCH_RESULT_STRINGS"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$1;

    invoke-direct {v4, p0, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$1;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v7

    if-nez v7, :cond_3

    new-array v1, v9, [I

    const/4 v7, 0x5

    aput v7, v1, v5

    aput v9, v1, v6

    new-instance v7, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$2;

    invoke-direct {v7, p0, v4, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$2;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;Ljava/lang/Runnable;[I)V

    invoke-static {v1, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->launchNTP()Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_2
    :goto_1
    move v5, v6

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private setSearchEngine()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->setSearchEngine()V

    return-void
.end method

.method private shouldIgnoreIntents(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "trusted_application_code_extra"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/KeyguardManager;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4102(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/os/PowerManager;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4202(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getDeviceProvisionState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method handleWebSearchIntent(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "query"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->processWebSearchIntent(Ljava/lang/String;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APPLOGS: onActivityResult()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getWindowAndroid()Lorg/chromium/ui/WindowAndroid;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lorg/chromium/ui/WindowAndroid;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x68

    if-ne p1, v1, :cond_2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->onVoiceSearchResult(Landroid/os/Bundle;)V

    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APPLOGS: onActivityResult: Activity.RESULT_OK. so setPopupExist(false)"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mNetworkHandler:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mNetworkHandler:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->setPopupExist(Z)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 23

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$400()Ljava/lang/String;

    move-result-object v20

    const-string v21, "APPLOGS: onNewIntent()"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "android.intent.action.DOWNLOAD_ACTIVITY_CHOOSER_FORWARD"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/DownloadActivityChooser;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string v20, "com.android.browser.is_kikin_result"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getKikinSelectionHandler()Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->saveResults()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-virtual/range {v20 .. v22}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->openUrlInCurrentModel(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    if-eqz v20, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "title"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "title"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "body"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->createNotificationInfo(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/common/Tab;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->addInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v20

    const-string v21, "notification"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    if-eqz v13, :cond_4

    const/16 v20, 0x639

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->shouldIgnoreIntents(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v20

    if-eqz v20, :cond_c

    const/4 v3, 0x1

    :cond_5
    :goto_1
    if-nez v3, :cond_0

    :try_start_0
    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->begin()V

    const/16 v17, 0x0

    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v17

    :cond_6
    if-nez v17, :cond_8

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->handleWebSearchIntent(Landroid/content/Intent;)Z

    move-result v20

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v21, v0

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v21

    add-int v20, v20, v21

    if-nez v20, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_d

    const-string v17, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    :goto_2
    if-eqz v17, :cond_7

    const-string v20, "http://"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    :cond_7
    const-string v20, "SBrowserMainActivityInstanceIndex"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v21, v0

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReusableLocalInstanceId:I
    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)I

    move-result v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_8
    const/4 v4, 0x0

    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->shouldOpenUrlInSameTab(Landroid/content/Intent;)Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4600(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/content/Intent;)Z

    move-result v4

    :cond_9
    const/4 v11, 0x0

    if-eqz v17, :cond_a

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v20

    new-instance v21, Lorg/chromium/content/browser/LoadUrlParams;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Lorg/chromium/content/browser/ContentView;->loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V

    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mAddressbar:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4800(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mAddressbar:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4800(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mAddressbar:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4800(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->clearFocus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_4
    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    goto/16 :goto_0

    :cond_c
    if-eqz p1, :cond_5

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->processVoiceResults(Landroid/content/Intent;)Z

    move-result v3

    goto/16 :goto_1

    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v12

    const v20, 0x7f0c0079

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v20, "com.android.browser.application_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMaxTabLimitReached()Z

    move-result v20

    if-nez v20, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    const/4 v9, 0x0

    if-eqz v7, :cond_f

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_f

    const-string v20, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    const/4 v9, 0x1

    :cond_f
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_10

    if-eqz v9, :cond_11

    :cond_10
    if-eqz v12, :cond_a

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$400()Ljava/lang/String;

    move-result-object v20

    const-string v21, "APPLOGS: onNewIntent() : loadUrl (from same applicaton or from Launcher)"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4700(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->cleanUpToolbar()V

    sget-object v20, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->launchUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v11

    goto/16 :goto_3

    :cond_11
    const-string v20, "isWebSearch"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$400()Ljava/lang/String;

    move-result-object v20

    const-string v21, "APPLOGS: onNewIntent() : loadUrl (from WEB_SERARCH)"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v20, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->launchUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v11

    goto/16 :goto_3

    :cond_12
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$400()Ljava/lang/String;

    move-result-object v20

    const-string v21, "APPLOGS: onNewIntent() : loadUrl (from external application)"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1, v6}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->launchUrlFromExternalApp(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/common/Tab;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    goto/16 :goto_3

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v20

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    throw v20
.end method

.method public processWebSearchIntent(Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "query"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "SBrowserMainActivityContextId"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$4000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "processWebSearchIntent false: No Resolve Info Found "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    goto :goto_0
.end method
