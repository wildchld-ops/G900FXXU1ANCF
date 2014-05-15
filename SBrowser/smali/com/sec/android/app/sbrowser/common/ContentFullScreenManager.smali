.class public Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;
.super Ljava/lang/Object;
.source "ContentFullScreenManager.java"


# instance fields
.field private isActivityResumed:Z

.field private isbackKeyPressed:Z

.field private mActivity:Landroid/app/Activity;

.field private mAnimbottom:Landroid/view/animation/Animation;

.field private mIsInFullScreenMode:Z

.field private mMainActivityController:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

.field private mMenuIsShown:Z

.field private mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

.field private mUi:Lcom/sec/android/app/sbrowser/common/UI;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lcom/sec/android/app/sbrowser/common/UI;Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMainActivityController:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->initialise()V

    return-void
.end method

.method private initialise()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mIsInFullScreenMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->isbackKeyPressed:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->isActivityResumed:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMenuIsShown:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f050002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mAnimbottom:Landroid/view/animation/Animation;

    return-void
.end method

.method private restoreStatusBar()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "fullscreen"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    :cond_0
    return-void
.end method

.method private setContentFullScreenGestureDisabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMainActivityController:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMainActivityController:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setContentFullScreenGestureFlag(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMainActivityController:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setContentFullScreenGestureFlag(Z)V

    goto :goto_0
.end method

.method private showToolbarByUITranslation()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMainActivityController:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMainActivityController:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUtilityCheckForHideUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->showToolBarUsingTopControl()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMainActivityController:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->registerScrollOrFlingListner(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/UI;->setActionBarVisibility(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->restoreStatusBar()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleContentViewTouchEvents()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->hideToolBarIfVisible()V

    return-void
.end method

.method public hideToolBarIfVisible()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mIsInFullScreenMode:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mActivity:Landroid/app/Activity;

    const v4, 0x7f050005

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/UI;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v2

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMainActivityController:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMainActivityController:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUtilityCheckForHideUrl()Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->hideToolBarUsingTopControl()V

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->unRegisterScrollOrFlingListner(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->isToolBarVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v3, v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setVisibility(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v3, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->startAnimationForToolbar(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v3, v5}, Lcom/sec/android/app/sbrowser/common/UI;->setBottombarVisibility(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v3, v5}, Lcom/sec/android/app/sbrowser/common/UI;->setActionBarVisibility(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMainActivityController:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getmContentController()Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->setContentFullScreenMode()V

    goto :goto_0
.end method

.method public isActivityResumed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->isActivityResumed:Z

    return v0
.end method

.method public isFullscreenForTabOrPending()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->isbackKeyPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->isActivityResumed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMenuIsShown:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->setContentFullScreenGestureDisabled(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mIsInFullScreenMode:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->isbackKeyPressed:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->isActivityResumed:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMenuIsShown:Z

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->isbackKeyPressed:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMenuIsShown:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->showToolbarByUITranslation()V

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mIsInFullScreenMode:Z

    return v0
.end method

.method public isInFullScreenMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mIsInFullScreenMode:Z

    return v0
.end method

.method public isMenuShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMenuIsShown:Z

    return v0
.end method

.method public isbackKeyPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->isbackKeyPressed:Z

    return v0
.end method

.method public setActivityResumed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->isActivityResumed:Z

    return-void
.end method

.method public setIsInFullScreenMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mIsInFullScreenMode:Z

    return-void
.end method

.method public setMenuIsShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMenuIsShown:Z

    return-void
.end method

.method public setbackKeyPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->isbackKeyPressed:Z

    return-void
.end method

.method public showToolBarIfHidden(Z)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMainActivityController:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMainActivityController:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUtilityCheckForHideUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v2, v4}, Lcom/sec/android/app/sbrowser/common/UI;->setActionBarVisibility(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->restoreStatusBar()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->isToolBarVisible()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->restoreStatusBar()V

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v2, v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setVisibility(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v2, v4}, Lcom/sec/android/app/sbrowser/common/UI;->setActionBarVisibility(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v2, v4}, Lcom/sec/android/app/sbrowser/common/UI;->setBottombarVisibility(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMainActivityController:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mMainActivityController:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getmContentController()Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getmContentController()Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->setTopMarginForContentView()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v2, v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setVisibility(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mToolBarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mAnimbottom:Landroid/view/animation/Animation;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->startAnimationForToolbar(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v2, v4}, Lcom/sec/android/app/sbrowser/common/UI;->setActionBarVisibility(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v2, v4}, Lcom/sec/android/app/sbrowser/common/UI;->setBottombarVisibility(Z)V

    goto :goto_0
.end method

.method public toggleFullscreenModeForTab(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->mIsInFullScreenMode:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->setContentFullScreenGestureDisabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->hideToolBarIfVisible()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->setContentFullScreenGestureDisabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->showToolbarByUITranslation()V

    goto :goto_0
.end method
