.class public abstract Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;
.super Landroid/widget/RelativeLayout;
.source "ToolbarBaseUi.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;
.implements Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$StateListener;


# static fields
.field private static final MIN_LOAD_PROGRESS:I = 0x5


# instance fields
.field private mInLoad:Z

.field protected mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

.field protected mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

.field private mPlaceHolderShowing:Z

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field private mQuickAccessUtilityController:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

.field protected mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mInLoad:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mPlaceHolderShowing:Z

    check-cast p1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    return-void
.end method

.method private handleQuickLaunchURL(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/UI;->showQuickLaunchView(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/common/UI;->showQuickLaunchView(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/common/UI;->showQuickLaunchView(Z)V

    goto :goto_0
.end method

.method private updateQuickLaunchScreenOnHomPage(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "about:blank"

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->updateSelectedView()V

    goto :goto_0
.end method

.method private updateTabTitle(ILjava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public cleanUpToolbar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->cleanUpLocationBar()V

    return-void
.end method

.method public clearFocus()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->clearFocus()V

    return-void
.end method

.method public createToolBarViewTreeObserver(I)V
    .locals 0

    return-void
.end method

.method public getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    return-object v0
.end method

.method public getToolbarBitmap()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    return-object v0
.end method

.method public getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    return-object v0
.end method

.method public hideSuggestions()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->hideSuggestions()V

    return-void
.end method

.method public invalidateSuggestionList(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->invalidateSuggestionList(ZZ)V

    return-void
.end method

.method public isToolBarVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateQuickLaunchScreenOnHomPage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public locationBarPost(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifySuggestionDataChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->notifySuggestionDataChanged()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040066

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setController(Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setBaseUi(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;)V

    return-void
.end method

.method public onNativeLibraryReady()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->onNativeLibraryReady()V

    :cond_0
    return-void
.end method

.method public onPageLoadFinished(ILcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, p1, v9, v10}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateTabLoadingState(IZZ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->resetPlaceHolderBitmap()V

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->clearLoadProgressIndicator()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setSecurityIcon()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v7

    const-string v8, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v7

    const-string v8, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_2
    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/UI;->isQuickLaunchPageSet()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v4, v10}, Lcom/sec/android/app/sbrowser/common/UI;->showQuickLaunchView(Z)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateButtonStatus()V

    const-string v7, "content://com.samsung.android.providers.context.log.browse_web"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.samsung.android.providers.context"

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v1, v5, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v7, 0x2

    if-lt v1, v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "app_id"

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "url"

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_4
    return-void

    :cond_5
    invoke-interface {v4, v9}, Lcom/sec/android/app/sbrowser/common/UI;->showQuickLaunchView(Z)V

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public onPageLoadStarted(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateButtonStatus()V

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateTabLoadingState(IZZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->clearSecurityIcon()V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onUrlSelection()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->hideSuggestions()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->removeReaderVisibility()V

    return-void
.end method

.method public sendLocationBarPostDelayed(Ljava/lang/Runnable;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setActionModeCallbackEditText(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setNewActionPopupMenu(IZ)V

    :cond_0
    return-void
.end method

.method public setBookmarkBtnClickable()V
    .locals 0

    return-void
.end method

.method public setFavicon(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setFavicon(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setLoadProgress(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getBackKeyPlaceHolder()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mPlaceHolderShowing:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mInLoad:Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-nez p1, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mInLoad:Z

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mInLoad:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mInLoad:Z

    goto :goto_0
.end method

.method public setLoadProgressForplaceHolder(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mPlaceHolderShowing:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mPlaceHolderShowing:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setSearchQuery(Ljava/lang/String;)V

    return-void
.end method

.method public setToolBarMainLayoutVisiblity()V
    .locals 0

    return-void
.end method

.method public setUrlBarStateToNormal()V
    .locals 0

    return-void
.end method

.method public setUrlToPageUrl()V
    .locals 8

    const/4 v7, 0x0

    const-string v5, "VerificationLog"

    const-string v6, "Calling setUrlToPageUrl in ToolbarBaseUi - start "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    const-string v6, ""

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setUrlBarText(Ljava/lang/String;Z)V

    const-string v5, "VerificationLog"

    const-string v6, "setUrlToPageUrl in ToolbarBaseUi tab is null- stop "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v5, "VerificationLog"

    const-string v6, "setUrlToPageUrl in ToolbarBaseUi tab is not null- stop "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateBookmarkStarButtonStatus()V

    invoke-static {}, Lorg/samsung/base/Feature;->isQuickLaunchEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_3

    const-string v5, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v2, v7}, Lcom/sec/android/app/sbrowser/common/UI;->showQuickLaunchView(Z)V

    :cond_3
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->handleQuickLaunchURL(Ljava/lang/String;)V

    :cond_4
    const-string v5, "chrome://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    const-string v6, ""

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setUrlBarText(Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setSecurityIcon()V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->isShowingSnapshot()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    move-object v3, v0

    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setUrlBarText(Ljava/lang/String;Z)V

    const-string v5, "VerificationLog"

    const-string v6, "Calling setUrlToPageUrl in ToolbarBaseUi - stop "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setSecurityIcon()V

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    const-string v6, ""

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setUrlBarText(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public setVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->setVisibility(I)V

    goto :goto_0
.end method

.method public startAnimationForToolbar(Landroid/view/animation/Animation;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startCapturingToolBarBitmap(Z)V
    .locals 0

    return-void
.end method

.method public toolbarUpdateBackground()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->setToolBarBackground(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->setToolBarBackground(Z)V

    goto :goto_0
.end method

.method public updateBookmarkStarButtonStatus()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "about:blank"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "chrome://newtab/#incognito"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setBookmarkStarButtonVisibilty(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isUrlBookmarked()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setBookmarkStarButtonLitup(Z)V

    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://com.sec.android.app.sbrowser/readinglist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setBookmarkStarButtonVisibilty(Z)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setBookmarkStarButtonLitup(Z)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setBookmarkStarButtonVisibilty(Z)V

    goto :goto_0
.end method

.method public updateButtonStatus()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getReaderStatus()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderVisible:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setReaderVisibility()V

    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->canGoBack()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateBackButtonVisibility(Z)V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->canGoForward()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateForwardButtonVisibility(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateReloadVisibility()V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateBookmarkIcon()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateXLargeButtonStatus()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->removeReaderVisibility()V

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public updateCurrentTabDisplayStatus(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TAG"

    const-string v2, "ToolBarAutoHider : updateCurrentTabDisplayStatus Start"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->toolbarUpdateBackground()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->setUrlToPageUrl()V

    :cond_1
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->clearLoadProgressIndicator()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateButtonStatus()V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "TAG"

    const-string v2, "ToolBarAutoHider : updateCurrentTabDisplayStatus End "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setVisibility(I)V

    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isShowingInterstitialPage()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getProgress()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateLoadProgress(II)V

    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateTabLoadingState(IZZ)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateTabTitle(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isShowingInterstitialPage()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->clearLoadProgressIndicator()V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->setAutoCompleteProfile()V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->clearFocus()V

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateButtonStatus()V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->clearLoadProgressIndicator()V

    goto :goto_1
.end method

.method public updateLoadProgress(II)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v3, 0x5

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateLoadProgress(I)V

    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getSbrTabBridge()Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getSbrTabBridge()Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/chrome/browser/SbrTabBridge;->getFavIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->setFavicon(Landroid/graphics/Bitmap;)V

    :cond_3
    const/16 v3, 0x64

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->clearLoadProgressIndicator()V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateButtonStatus()V

    goto :goto_0
.end method

.method public updateQuickAccessMode()V
    .locals 0

    return-void
.end method

.method public updateTabLoadingState(IZZ)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v2, p2, p3}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateLoadingState(ZZ)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 v2, 0x5

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateLoadProgress(II)V

    :cond_1
    return-void
.end method

.method public abstract updateToolbarButtons(Z)V
.end method

.method public updateXLargeButtonStatus()V
    .locals 0

    return-void
.end method
