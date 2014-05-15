.class Lcom/sec/android/app/sbrowser/common/Tab$15;
.super Lorg/chromium/content/browser/WebContentsObserverAndroid;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab;->initializeWebContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/Tab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct {p0, p2}, Lorg/chromium/content/browser/WebContentsObserverAndroid;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    return-void
.end method


# virtual methods
.method public didFailLoad(ZZILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "Tab"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "didFailLoad: onReceivedError mId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mId:I
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2800(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") err("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") description("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") isMainFrame("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1702(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->checkIfUrlBookmarked(Ljava/lang/String;)V
    invoke-static {v2, p5}, Lcom/sec/android/app/sbrowser/common/Tab;->access$7100(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    check-cast v2, Lorg/samsung/content/sbrowser/SbrContentView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1700(Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/samsung/content/sbrowser/SbrContentView;->setIsPageLoading(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->notifyPageLoadFailed(I)V
    invoke-static {v2, p3}, Lcom/sec/android/app/sbrowser/common/Tab;->access$7700(Lcom/sec/android/app/sbrowser/common/Tab;I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mErrorPage:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3502(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    :cond_0
    const-string v2, "CscFeature_Web_EnableErrPopupDuringRoamingInternetUse"

    invoke-static {v2}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v6, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;-><init>(Landroid/content/Context;)V

    const/16 v2, -0x76

    if-eq p3, v2, :cond_1

    const/4 v2, -0x7

    if-eq p3, v2, :cond_1

    const/16 v2, -0x64

    if-eq p3, v2, :cond_1

    const/16 v2, -0x65

    if-eq p3, v2, :cond_1

    const/16 v2, -0x66

    if-eq p3, v2, :cond_1

    const/16 v2, -0x67

    if-eq p3, v2, :cond_1

    const/16 v2, -0x68

    if-eq p3, v2, :cond_1

    const/16 v2, -0xf

    if-eq p3, v2, :cond_1

    const/16 v2, -0x6a

    if-eq p3, v2, :cond_1

    const/16 v2, -0x6c

    if-eq p3, v2, :cond_1

    const/16 v2, -0x6d

    if-eq p3, v2, :cond_1

    const/16 v2, -0x69

    if-eq p3, v2, :cond_1

    const/16 v2, -0x89

    if-ne p3, v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->showRoamingNetworkErrorPopup()V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1600(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v2

    iput-object p5, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderFailedUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsPageStarted:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/sbrowser/common/Tab;->access$7802(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/Tab;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ToolBarAutoHider : is toolBar DeleteBtnClicked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->isDeleteBtnClicked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->isDeleteBtnClicked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/Tab;->mPageFinishBitmapHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/common/Tab;->mPageFinishBitmapHandler:Landroid/os/Handler;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-interface {v1, v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->setDeleteBtnFlag(Z)V

    :cond_3
    invoke-super/range {p0 .. p5}, Lorg/chromium/content/browser/WebContentsObserverAndroid;->didFailLoad(ZZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 3

    const-string v0, "Tab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "didFinishLoad frameId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") isMainFrame("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/Tab$15;->doStopLoading(JLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsPageStartBitmap:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6902(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    const-string v0, "test262.ecmascript"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://ie.microsoft.com/testdrive/performance/robohornetpro/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4700(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->executeReaderDetectionLogic(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/WebContentsObserverAndroid;->didFinishLoad(JLjava/lang/String;Z)V

    sget-boolean v0, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getKikinSelectionHandler()Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->pageFinishLoading(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsNavigationToDifferentPage:Z
    invoke-static {v0, p3}, Lcom/sec/android/app/sbrowser/common/Tab;->access$7002(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    invoke-super {p0, p1, p2, p3}, Lorg/chromium/content/browser/WebContentsObserverAndroid;->didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/Tab;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "didNavigateMainFrame isNavigationToDifferentPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    const-string v0, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1400(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->initializeLayerPositions()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mPageFinishBitmapHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1400(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->updateView(I)V

    goto :goto_0
.end method

.method public didRedirectProvisionalLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/chromium/content/browser/WebContentsObserverAndroid;->didRedirectProvisionalLoad(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didStartLoading(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Tab"

    const-string v1, "didStartLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/mcafee/AnshinScan;->toastPopup()V

    invoke-super {p0, p1}, Lorg/chromium/content/browser/WebContentsObserverAndroid;->didStartLoading(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getIsAutoHideEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    instance-of v0, v0, Lorg/samsung/content/sbrowser/SbrContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    check-cast v0, Lorg/samsung/content/sbrowser/SbrContentView;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentView;->showToolBar(I)V

    :cond_0
    return-void
.end method

.method public didStartProvisionalLoadForFrame(JJZLjava/lang/String;ZZ)V
    .locals 6
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "Tab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didStartProvisionalLoadForFrame frameId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isMainFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsBookmarkedUrl:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6602(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mThumbnailRequest:I
    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6702(Lcom/sec/android/app/sbrowser/common/Tab;I)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4700(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4700(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getReaderScriptUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsReload:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6800(Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4700(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->checkReaderStatus(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsReload:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6802(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2000(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2000(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move-result-object v1

    invoke-interface {v1, p6}, Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;->onPageLoadStart(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->checkUtilityConditionsForHideUrl()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1, v5, v4, v4}, Lorg/chromium/content/browser/ContentViewCore;->updateTopControlsState(ZZZ)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1, p6}, Lcom/sec/android/app/sbrowser/common/Tab;->doStartLoading(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsPageStartBitmap:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6902(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4700(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->checkReaderStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mReaderDetection:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4700(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->checkReaderStatus(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public didStopLoading(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Tab"

    const-string v1, "didStopLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lorg/chromium/content/browser/WebContentsObserverAndroid;->didStopLoading(Ljava/lang/String;)V

    return-void
.end method

.method public doStopLoading(JLjava/lang/String;Z)V
    .locals 19

    const-string v15, "Tab"

    const-string v16, "doStopLoading"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2900(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->setCanDash(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/16 v16, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z
    invoke-static/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1702(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mErrorPage:Z
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3500(Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    move-object/from16 v0, p3

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->checkIfUrlBookmarked(Ljava/lang/String;)V
    invoke-static {v15, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$7100(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v15

    check-cast v15, Lorg/samsung/content/sbrowser/SbrContentView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1700(Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lorg/samsung/content/sbrowser/SbrContentView;->setIsPageLoading(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v15, v15, Lcom/sec/android/app/sbrowser/common/Tab;->mFidoHandlerInstance:Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v15, v15, Lcom/sec/android/app/sbrowser/common/Tab;->mFidoHandlerInstance:Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->fidoEvaluateJavaScript(Ljava/lang/String;Lorg/chromium/content/browser/ContentView;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$400(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1600(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1600(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1600(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    if-eqz v13, :cond_3

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/utilities/URLUtilities;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    const-string v15, "text/html"

    invoke-static {v8, v15}, Lcom/sec/android/app/sbrowser/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_10

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setReadingListMenuEnabled(Z)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v15

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/common/UI;->getUtilityController()Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$400(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$400(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$400(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentViewCore;->getNavigationHistory()Lorg/chromium/content/browser/NavigationHistory;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/NavigationHistory;->getCurrentEntryIndex()I

    move-result v5

    const/4 v15, -0x1

    if-eq v5, v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentViewCore;->getNavigationHistory()Lorg/chromium/content/browser/NavigationHistory;

    move-result-object v15

    invoke-virtual {v15, v5}, Lorg/chromium/content/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content/browser/NavigationEntry;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/NavigationEntry;->getOriginalUrl()Ljava/lang/String;

    move-result-object v9

    :goto_1
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v15, Lcom/sec/android/app/sbrowser/common/Tab$15$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v7, v11, v9}, Lcom/sec/android/app/sbrowser/common/Tab$15$2;-><init>(Lcom/sec/android/app/sbrowser/common/Tab$15;Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v16, 0x7d0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v15, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v15, v15, Lcom/sec/android/app/sbrowser/common/Tab;->mSupportedCPUCoreNum:[I

    if-eqz v15, :cond_12

    const-string v15, "192.168.1.2"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$7200(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/os/DVFSHelper;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/DVFSHelper;->release()V

    const-string v15, "Tab"

    const-string v16, "onPageFinished CPU released"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v15, v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->notifyPageLodingStateToSSRM(ZLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->isItErrorPage()Z

    move-result v15

    if-eqz v15, :cond_13

    const-string v15, "GATE"

    const-string v16, "<GATE-M>DEV_ACTION_ERROR</GATE-M>"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v15, v15, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserSmartcardWrapper:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v15, v15, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserSmartcardWrapper:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mSmartcardIdenfier:Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->doStopLoading(Ljava/lang/Object;)V

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSupportWMLviaHtmlFeatureFlagStatus()Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v15

    invoke-virtual {v15}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->IsWMLPage()Z

    move-result v15

    if-eqz v15, :cond_6

    new-instance v14, Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/app/Activity;)V

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;->handleWMLPageSource()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/16 v16, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsTabStateDirty:Z
    invoke-static/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3002(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->updateTitle()V
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$7300(Lcom/sec/android/app/sbrowser/common/Tab;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMemoryUsageMonitor()Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    move-result-object v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMemoryUsageMonitor()Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->handleLowMemoryThreshold(Landroid/content/Context;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/16 v16, 0x2

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->notifyPageLoad(I)V
    invoke-static/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3600(Lcom/sec/android/app/sbrowser/common/Tab;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->onPageFinishedUpdateSyncDB()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/content/Context;

    const-string v16, "accessibility"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    const/4 v15, 0x1

    if-ne v6, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->isTalkbackSuspend()Z

    move-result v15

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->myTTS:Landroid/speech/tts/TextToSpeech;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3400(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/speech/tts/TextToSpeech;

    move-result-object v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->myTTS:Landroid/speech/tts/TextToSpeech;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3400(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/speech/tts/TextToSpeech;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f0c0153

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->captureBitmapOnLoadFinish:Z
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$7400(Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/16 v16, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->captureBitmapOnLoadFinish:Z
    invoke-static/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->access$7402(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->setThumbnailBeforeTabMgrSwitch()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sec/android/app/sbrowser/common/Tab;->isPageLoadFinished:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v15

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$400(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$400(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$400(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    :cond_a
    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v15

    invoke-virtual {v15}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->IsTabManagerActive()Z

    move-result v15

    if-nez v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->caputreSoftBitmapFor(I)V

    :cond_b
    :goto_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getThumbnailCaptureOptimizationFlagStatus()Z

    move-result v15

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v15

    invoke-virtual {v15}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->IsTabManagerActive()Z

    move-result v15

    if-nez v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-boolean v15, v15, Lcom/sec/android/app/sbrowser/common/Tab;->isnewwindowcreating:Z

    if-eqz v15, :cond_16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->IsthumbnailAvailable()Z

    move-result v15

    if-nez v15, :cond_16

    :cond_c
    const-string v15, "newwindow"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "on page load finish"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/16 v16, 0x6

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->caputreSoftBitmapFor(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sec/android/app/sbrowser/common/Tab;->isnewwindowcreating:Z

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v15

    if-eqz v15, :cond_d

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->triggerIncognitoKeyGeneration()V
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/Tab;->access$7600()V

    :cond_d
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSmartSuggestBarFlag()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/Tab$15;->updateCategory()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mErrorPage:Z
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3500(Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v15

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2000(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move-result-object v15

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2000(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move-result-object v15

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;->onPageLoadFinish()V

    :cond_f
    return-void

    :cond_10
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setReadingListMenuEnabled(Z)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$400(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    :cond_12
    const-string v15, "Tab"

    const-string v16, "onPageFinished CPU did not release"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_13
    const-string v15, "GATE"

    const-string v16, "<GATE-M>DEV_ACTION_COMPLETED</GATE-M>"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_14
    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v15

    invoke-virtual {v15}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->IsTabManagerActive()Z

    move-result v15

    if-eqz v15, :cond_b

    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab;->caputreSoftBitmapFor(I)V

    goto/16 :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v15, v15, Lcom/sec/android/app/sbrowser/common/Tab;->mThumnailAsyncTask:Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;

    if-eqz v15, :cond_17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v15, v15, Lcom/sec/android/app/sbrowser/common/Tab;->mThumnailAsyncTask:Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v15

    sget-object v16, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v15, v15, Lcom/sec/android/app/sbrowser/common/Tab;->mThumnailAsyncTask:Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;->cancel(Z)Z

    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/sec/android/app/sbrowser/common/Tab;->mThumnailAsyncTask:Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v15

    if-eqz v15, :cond_18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v15

    if-eqz v15, :cond_18

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentViewCore;->getNavigationHistory()Lorg/chromium/content/browser/NavigationHistory;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/NavigationHistory;->getCurrentEntryIndex()I

    move-result v5

    const/4 v15, -0x1

    if-eq v5, v15, :cond_18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentViewCore;->getNavigationHistory()Lorg/chromium/content/browser/NavigationHistory;

    move-result-object v15

    invoke-virtual {v15, v5}, Lorg/chromium/content/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content/browser/NavigationEntry;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/NavigationEntry;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    new-instance v16, Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/Tab$1;)V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/sec/android/app/sbrowser/common/Tab;->mThumnailAsyncTask:Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v15, v15, Lcom/sec/android/app/sbrowser/common/Tab;->mThumnailAsyncTask:Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v2, v16, v17

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/common/Tab$ThumnailAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_5
.end method

.method public updateCategory()V
    .locals 13

    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->access$400(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    invoke-static {v11}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1600(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getSmartDB()Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

    move-result-object v11

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mSmartDB:Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;
    invoke-static {v10, v11}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6202(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;)Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

    :try_start_1
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mSmartDB:Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;
    invoke-static {v11}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6200(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v10, v11}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6302(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mSmartDB:Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6200(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v11}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6300(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    invoke-virtual {v10, v3, v11}, Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;->getClusteredHistoryDetails(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x7

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v10, "\'"

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v0, :cond_2

    const-string v10, "Unknown"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    new-instance v9, Lcom/sec/android/app/sbrowser/common/Tab$15$1;

    invoke-direct {v9, p0}, Lcom/sec/android/app/sbrowser/common/Tab$15$1;-><init>(Lcom/sec/android/app/sbrowser/common/Tab$15;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;

    const/4 v10, 0x1

    invoke-direct {v1, v3, v9, v10}, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;-><init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResultListener;I)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;->findCategory()V

    :goto_0
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6300(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_1
    return-void

    :catch_0
    move-exception v7

    goto :goto_1

    :cond_3
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mCategoryString:Ljava/lang/String;
    invoke-static {v10, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6502(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v10, "Tab"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in updateCategory "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
