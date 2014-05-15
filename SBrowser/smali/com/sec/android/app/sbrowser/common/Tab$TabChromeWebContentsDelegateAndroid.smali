.class Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;
.super Lorg/samsung/chrome/browser/SbrWebContentsDelegateAndroid;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabChromeWebContentsDelegateAndroid"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/Tab;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrWebContentsDelegateAndroid;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/Tab$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    return-void
.end method


# virtual methods
.method public addNewContents(IIILandroid/graphics/Rect;Z)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/Tab;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPLOGS: addNewContents"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTabHost:Lcom/sec/android/app/sbrowser/common/Tab$TabHost;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1300(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab$TabHost;

    move-result-object v0

    if-nez v0, :cond_0

    move v2, v6

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getBackKeyPlaceHolder()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2302(Z)Z

    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "Tab.java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Opening pop-up for URL "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " succeeded"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->prevParentWebContents:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2500(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->prevParentWebContents:I
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2502(Lcom/sec/android/app/sbrowser/common/Tab;I)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTabHost:Lcom/sec/android/app/sbrowser/common/Tab$TabHost;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1300(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab$TabHost;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTabParentId:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2600(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab$TabHost;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTabHost:Lcom/sec/android/app/sbrowser/common/Tab$TabHost;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1300(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab$TabHost;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTabParentId:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2600(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab$TabHost;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->setTabKillMe(Z)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTabHost:Lcom/sec/android/app/sbrowser/common/Tab$TabHost;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1300(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab$TabHost;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mId:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2800(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v1

    const/4 v3, 0x0

    invoke-interface {v0, p2, v1, v3}, Lcom/sec/android/app/sbrowser/common/Tab$TabHost;->createTabWithNativeContents(IILjava/lang/String;)Lcom/sec/android/app/sbrowser/common/Tab;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mKillMe:Z
    invoke-static {v0, v6}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2702(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mId:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2800(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v1

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTabParentId:I
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2602(Lcom/sec/android/app/sbrowser/common/Tab;I)I

    goto :goto_1
.end method

.method public closeContents()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTabHost:Lcom/sec/android/app/sbrowser/common/Tab$TabHost;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1300(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab$TabHost;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2200(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mCloseContentsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2100(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2200(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mCloseContentsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2100(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public handleKeyboardEvent(Landroid/view/KeyEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    :cond_0
    invoke-super {p0, p1}, Lorg/samsung/chrome/browser/SbrWebContentsDelegateAndroid;->handleKeyboardEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public isFullscreenForTabOrPending()Z
    .locals 3

    const-string v1, "SETASK"

    const-string v2, "isFullscreenForTabOrPending"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getFullScreenManager()Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->isFullscreenForTabOrPending()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onFavIconUpdateForCurrentTab()V
    .locals 4

    const-string v2, "SETASK"

    const-string v3, "onFavIconUpdateForCurrentTab"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tabId"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mId:I
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2800(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "url"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3800(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3800(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/chrome/browser/SbrTabBridge;->getFavIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mFavIcon:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3902(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->updatesearchEngineFavIcon(Ljava/lang/String;)Z
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4000(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getSearchEngineController()Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getSearchEngineController()Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;->checkIfAllFavIconsUpdated()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getSearchEngineController()Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;->currentTabFavIconUpdate()V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3800(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3800(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/chrome/browser/SbrTabBridge;->getFavIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3800(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/chrome/browser/SbrTabBridge;->getFavIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3800(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/chrome/browser/SbrTabBridge;->getFavIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/sec/android/app/sbrowser/common/UI;->setFavicon(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3800(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3800(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/chrome/browser/SbrTabBridge;->getFavIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->updateFavIconInDb()V
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4100(Lcom/sec/android/app/sbrowser/common/Tab;)V

    :cond_3
    return-void

    :cond_4
    const-string v1, ""

    goto/16 :goto_0

    :cond_5
    const-string v2, ""

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lcom/sec/android/app/sbrowser/common/UI;->setFavicon(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method public onFindMatchRectsAvailable(Lorg/chromium/chrome/browser/FindMatchRectsDetails;)V
    .locals 0

    return-void
.end method

.method public onFindResultAvailable(Lorg/chromium/chrome/browser/FindNotificationDetails;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mFindResultReceivedListener:Lcom/sec/android/app/sbrowser/common/Tab$FindResultReceivedListener;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3700(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab$FindResultReceivedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mFindResultReceivedListener:Lcom/sec/android/app/sbrowser/common/Tab$FindResultReceivedListener;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3700(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab$FindResultReceivedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/Tab$FindResultReceivedListener;->onFindResultReceived(Lorg/chromium/chrome/browser/FindNotificationDetails;)V

    :cond_0
    return-void
.end method

.method public onLoadProgressChanged(I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1400(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->updateView(I)V

    :cond_0
    const/16 v1, 0x64

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mLastLoadedUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1502(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1600(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateBookmarkIcon()V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1700(Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->notifyLoadProgress()V
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1800(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->onLoadProgressChanged(Lcom/sec/android/app/sbrowser/common/Tab;I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isHideURLPrefEnabled()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2000(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2000(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;->onLoadProgressChanged(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mLastLoadedUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1502(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public onLoadStarted()V
    .locals 6

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->ttspageloading:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3202(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->ttspageloadingsec:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3302(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->isTalkbackSuspend()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    new-instance v3, Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid$1;-><init>(Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;)V

    invoke-direct {v3, v4, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->myTTS:Landroid/speech/tts/TextToSpeech;
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3402(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mErrorPage:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3502(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserSmartcardWrapper:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/Tab;->mSBrowserSmartcardWrapper:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/common/Tab;->mSmartcardIdenfier:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->onLoadStarted(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onLoadStopped()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setBookmarkStarButtonState()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/16 v1, 0x11

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->notifyPageLoad(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3600(Lcom/sec/android/app/sbrowser/common/Tab;I)V

    return-void
.end method

.method public onPopupBlockStateChanged()V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isTabBlockingPopups()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBrowserPolicy()Landroid/sec/enterprise/BrowserPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/sec/enterprise/BrowserPolicy;->getPopupsSetting()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mPopupWebAlert:Lcom/sec/android/app/sbrowser/infobar/WebAlert;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4200(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    new-instance v2, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_POPUP_BLOCKED:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;-><init>(Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertBlockedPopupListener;Ljava/lang/String;Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;)V

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mPopupWebAlert:Lcom/sec/android/app/sbrowser/infobar/WebAlert;
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4202(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/infobar/WebAlert;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4300(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mPopupWebAlert:Lcom/sec/android/app/sbrowser/infobar/WebAlert;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4200(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->addInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->popupstatus:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4400(Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mKillMe:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2702(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mPopupWebAlert:Lcom/sec/android/app/sbrowser/infobar/WebAlert;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4200(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->updateWebAlertBlockedPopupText()V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mPopupWebAlert:Lcom/sec/android/app/sbrowser/infobar/WebAlert;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4200(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4300(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mPopupWebAlert:Lcom/sec/android/app/sbrowser/infobar/WebAlert;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4200(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->removeInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mPopupWebAlert:Lcom/sec/android/app/sbrowser/infobar/WebAlert;
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4202(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/infobar/WebAlert;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    goto :goto_1
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/Tab;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUpdateUrl called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2900(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->releaseDashmode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2900(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->setCanDash(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsTabStateDirty:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3002(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$402(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrWebLoginListener:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->mSbrWebLoginListener:Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$400(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->UpdateUrl(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->notifyPageUrlChanged()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3100(Lcom/sec/android/app/sbrowser/common/Tab;)V

    return-void
.end method

.method public openNewTab(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getBackKeyPlaceHolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2302(Z)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsBackKeyWhitePlaceHolder()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->setThumbnailBeforeTabMgrSwitch()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mInterceptNavigationDelegate:Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$2400(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->shouldIgnoreNewTab(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTabHost:Lcom/sec/android/app/sbrowser/common/Tab$TabHost;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1300(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab$TabHost;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lcom/sec/android/app/sbrowser/common/Tab$TabHost;->openNewTab(Ljava/lang/String;IZ)V

    :cond_1
    return-void
.end method

.method public rendererUnresponsive()V
    .locals 4

    const-string v1, "Tab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rendererUnresponsive for Tab id :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3800(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3800(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrGetRenderProcessPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->stopChildProcessOnRendererUnresponsive(I)V

    :cond_0
    return-void
.end method

.method public showRepostFormWarningDialog(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->continuePendingReload()V

    :cond_0
    return-void
.end method

.method public takeFocus(Z)Z
    .locals 7

    const v6, 0x7f0a00f5

    const v5, 0x7f0a00ef

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getLocationBar(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getKeyCodeEvent()I

    move-result v2

    const/16 v4, 0x13

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getLocationBar(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getBottomBarUi()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getBottomBarUi()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getBottomBarUi()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public toggleFullscreenModeForTab(Z)V
    .locals 3

    const-string v1, "SETASK"

    const-string v2, "toggleFullscreenModeForTab"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getFullScreenManager()Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->toggleFullscreenModeForTab(Z)V

    :cond_0
    return-void
.end method
