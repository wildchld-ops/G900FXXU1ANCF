.class Lcom/sec/android/app/sbrowser/common/Tab$2;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/Tab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDidFlushPendingMessages()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->closeTabUponNativeConfirmation()V

    :cond_0
    return-void
.end method

.method public receivedHttpAuthRequest(Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/Tab;->tryHandleSpdyProxyAuthentication(Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;)V

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->setAutofillObserver(Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->show()V

    :cond_0
    return-void
.end method

.method public swapWebContents(I)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, " onSwapContent Scenario, nativeWebContents should be Present, If not, native side wrongly operating."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->destroyInternalForPreRender(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$900(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsDelegate:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/Tab$1;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsDelegate:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v1

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->initContentView(Landroid/app/Activity;I)V
    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1100(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->onSwap()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->showInternal()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1200(Lcom/sec/android/app/sbrowser/common/Tab;)V

    const-string v0, "Tab"

    const-string v1, "OnSwap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
