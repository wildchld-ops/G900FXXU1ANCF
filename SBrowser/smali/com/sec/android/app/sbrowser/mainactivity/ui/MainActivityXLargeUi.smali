.class public Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;
.super Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;
.source "MainActivityXLargeUi.java"


# static fields
.field private static final FIRST_INSTANCE_INDEX:I = 0x1

.field private static final FOUR_INSTANCE_INDEX:I = 0x4

.field private static final INVALID_INSTANCE_INDEX:I = 0x0

.field private static final SECOND_INSTANCE_INDEX:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "MainActivityXLargeUi"

.field private static final THIRD_INSTANCE_INDEX:I = 0x3


# instance fields
.field private mReusableLocalInstanceId:I

.field private mStateofURL:I

.field private mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mStateofURL:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mMaxQuickLaunchCount:I

    return-void
.end method

.method private handleMultiwindowClick(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi$1;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->setOnOverviewClickHandler(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public findOnPage(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->findOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    return-object v0
.end method

.method public getContentContainerLayout()Landroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFindTextToolbarWrapper()Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getFindTextToolbarWrapper()Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceIdOnCreation(Landroid/os/Bundle;)I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->updateTotalInstancesCounter()V

    if-nez p1, :cond_0

    const-string v0, "MainActivityXLargeUi"

    const-string v1, "Bundle is null."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    :goto_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    return v0

    :cond_0
    const-string v0, "savedInstanceIndex"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    if-nez v0, :cond_1

    const-string v0, "MainActivityXLargeUi"

    const-string v1, "Bundle is NOT null & instance id is NOT present."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setFirstIndexNeedToBeAssignedNext(Z)V

    :goto_1
    const-string v0, "MainActivityXLargeUi"

    const-string v1, "Bundle is NOT null & instance id is present."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setFirstIndexNeedToBeAssignedNext(Z)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->updateTotalInstancesCounter()V

    if-eqz p1, :cond_5

    const-string v0, "savedInstanceIndex"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    if-nez v0, :cond_4

    const-string v0, "MainActivityXLargeUi"

    const-string v1, "Bundle is NOT null & instance id is NOT present."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    goto :goto_0

    :cond_4
    const-string v0, "MainActivityXLargeUi"

    const-string v1, "Bundle is NOT null & instance id is present."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v0, "MainActivityXLargeUi"

    const-string v1, "Bundle is null."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->IsFirstIndexNeedToBeAssignedNext()Z

    move-result v0

    if-eqz v0, :cond_6

    iput v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setFirstIndexNeedToBeAssignedNext(Z)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    goto :goto_0
.end method

.method public getPrevTabCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStateofURL()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mStateofURL:I

    return v0
.end method

.method public getTabBar()Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    return-object v0
.end method

.method public getTabSwitchAnimator()Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v0

    return-object v0
.end method

.method public getUtilityController()Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public inflateAndInitializeUi(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->inflateAndInitializeUi(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->setActionBar(Landroid/content/Context;)V

    return-void
.end method

.method public initializeUI(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->initializeUI(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->handleMultiwindowClick(Landroid/content/Context;)V

    return-void
.end method

.method public loadOrClearPreviousState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getInstanceIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->restoreEncryptionKey(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->clearEncryptedState(I)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v0

    const-string v1, "no-restore-state"

    invoke-virtual {v0, v1}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->loadState(I)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->fileReadRestorableTabCountByInstanceId(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->fileReadRestorableTabCountByInstanceId(I)V

    goto :goto_0

    :cond_3
    const-string v0, "MainActivityXLargeUi"

    const-string v1, "ClearState form loadOrClearPreviousState"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->clearState(I)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getInstanceIndex()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setFirstIndexNeedToBeAssignedNext(Z)V

    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onDestroy()V

    return-void
.end method

.method public onMenuKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onOptionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12

    const v11, 0x7f0a033b

    const v10, 0x7f0a0331

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1, v11, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const v7, 0x7f0a0324

    invoke-interface {p1, v7, v9}, Landroid/view/Menu;->setGroupVisible(IZ)V

    move v3, v6

    :goto_0
    return v3

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v5

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v7

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_1

    invoke-interface {p1, v11, v9}, Landroid/view/Menu;->setGroupVisible(IZ)V

    :cond_1
    const v7, 0x7f0a033a

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControllerPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.samsung.helphub"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const v6, 0x7f0a0331

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const v6, 0x7f0a0337

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v6, 0x7f0a0338

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v6, 0x7f0a0330

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const v6, 0x7f0a0331

    :try_start_1
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->getToolbarBookmarkIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public onTabClosed(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->onTabClosed(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mNewTabStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mNewTabStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mNewTabStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->showQuickLaunchView(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mNewTabStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_2
    invoke-super {p0, p2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onTabClosed(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTabCreated(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->onTabCreated(Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->isQuickLaunchPageSet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onTabCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTabSelected(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->onTabSelected(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public processTabManagerlaunch(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public reloadTabIfNecessary()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->reloadTabIfNecessary(Z)V

    return-void
.end method

.method public requestWindowFeature(Landroid/content/Context;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->requestWindowFeature(Landroid/content/Context;)V

    return-void
.end method

.method public resetTabStateOnUserDemand()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getInstanceIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mReusableLocalInstanceId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->clearState(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->resetOtherInstanceRestorableTabCounter()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->fileReadRestorableTabCountByInstanceId(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->clearState(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->resetOtherInstanceRestorableTabCounter()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->fileReadRestorableTabCountByInstanceId(I)V

    goto :goto_0
.end method

.method public setActionBar(Landroid/content/Context;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    check-cast p1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0
.end method

.method public setActionBarVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method public setChromeViewHolder(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V
    .locals 0

    return-void
.end method

.method public setFavicon(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->setFavicon(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setFavicon(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    return-void
.end method

.method public setStateofURL(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mStateofURL:I

    return-void
.end method

.method public showActionBar()V
    .locals 0

    return-void
.end method

.method public showControlsForContextualMenuBar(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public showQuickAccessView(Z)V
    .locals 0

    return-void
.end method

.method public updateLoadProgress(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->mTabBar:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->updateLoadProgress(II)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->updateLoadProgress(II)V

    return-void
.end method

.method public updateQuickAccessModeOnNativeFail()V
    .locals 0

    return-void
.end method

.method public updateQuickLaunchMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateSelectedView()V
    .locals 0

    return-void
.end method

.method public updateUrlBarFocus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateUrlBarFocus(Z)V

    return-void
.end method
