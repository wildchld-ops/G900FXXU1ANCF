.class public Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;
.super Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;
.source "ToolbarXlargeUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public bottomBarChildClicked:Ljava/lang/Boolean;

.field private mBackButton:Landroid/widget/ImageButton;

.field private mBookmarkButton:Landroid/widget/ImageView;

.field private mCurrentConfiguration:I

.field private mForwardButton:Landroid/widget/ImageButton;

.field private mTb_toolbar_Search_engine:Landroid/widget/ImageView;

.field private mTb_toolbar_Search_engine_favicon:Landroid/widget/ImageView;

.field private mTb_toolbar_search_engine_layout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->bottomBarChildClicked:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public createPopupMenu()V
    .locals 0

    return-void
.end method

.method public dismissPopupMenu()V
    .locals 0

    return-void
.end method

.method public enableMoreButton()V
    .locals 0

    return-void
.end method

.method public getCurrentView()Lorg/chromium/content/browser/ContentView;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initializeUiElements()V
    .locals 0

    return-void
.end method

.method public invokeQuickAcessScreen(Z)V
    .locals 0

    return-void
.end method

.method public isPopupMenuDismissed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->updateButtonStatus()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->navigateBack()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->updateButtonStatus()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->navigateForward()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mBookmarkButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->launchBookmarkActivity()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mTb_toolbar_Search_engine:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mTb_toolbar_Search_engine_favicon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mTb_toolbar_Search_engine:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->displaySearchEnginePopup(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->onFinishInflate()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->setUiType(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setStateListener(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$StateListener;)V

    :cond_0
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mBackButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mForwardButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0297

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mBookmarkButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mBookmarkButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0294

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mTb_toolbar_search_engine_layout:Landroid/view/View;

    const v0, 0x7f0a0295

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mTb_toolbar_Search_engine:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mTb_toolbar_Search_engine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0296

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mTb_toolbar_Search_engine_favicon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mTb_toolbar_Search_engine_favicon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOrientationChange(I)V
    .locals 0

    return-void
.end method

.method public onPageLoadStarted(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    check-cast v1, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->onPageLoadStarted(Landroid/os/Message;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->onPageLoadStarted(Landroid/os/Message;)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->showKeyboard(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->showKeyboard(Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onUrlFocusChange(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->updateCurrentTabDisplayStatus(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mTb_toolbar_search_engine_layout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->setFaviconVisibility(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mTb_toolbar_search_engine_layout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->setFaviconVisibility(Z)V

    goto :goto_0
.end method

.method public registerMultiwindowBtnListener()V
    .locals 0

    return-void
.end method

.method public setBookmarkBtnClickable()V
    .locals 0

    return-void
.end method

.method public setBottomBarChildClicked(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->bottomBarChildClicked:Ljava/lang/Boolean;

    return-void
.end method

.method public setReaderListButtonClicked(Z)V
    .locals 0

    return-void
.end method

.method public setSearchEngineFavIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mTb_toolbar_Search_engine_favicon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setToolBarBackground(Z)V
    .locals 0

    return-void
.end method

.method public setToolBarMainLayoutVisiblity()V
    .locals 0

    return-void
.end method

.method public setUrlBarStateToNormal()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->setUrlToPageUrl()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->requestFocus()Z

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->updateCurrentTabDisplayStatus(Z)V

    return-void
.end method

.method public showPopupMenu()V
    .locals 0

    return-void
.end method

.method public unregisterMultiwindowBtnListener()V
    .locals 0

    return-void
.end method

.method public updateBackButtonVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public updateCurrentTabDisplayStatus(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    check-cast v1, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->tabSelected()V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateCurrentTabDisplayStatus(Z)V

    return-void
.end method

.method public updateForwardButtonVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->mForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public updateTabCountDisplay(I)V
    .locals 0

    return-void
.end method

.method public updateToolbarButtons(Z)V
    .locals 0

    return-void
.end method

.method public updateXLargeButtonStatus()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getSbrTabBridge()Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getSbrTabBridge()Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/chrome/browser/SbrTabBridge;->getFavIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarXlargeUi;->setFavicon(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setSecurityIcon()V

    :cond_1
    return-void
.end method
