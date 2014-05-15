.class public Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;
.super Ljava/lang/Object;
.source "TabSwitchAnimator.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;
.implements Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;


# static fields
.field private static notifications:[I


# instance fields
.field private mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

.field private mBrowserTabFocusListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;

.field private mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field private final mIsEnabled:Z

.field private mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

.field private mPreviousTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field private mSBrowserTabControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field private mWebPageNavegationListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->notifications:[I

    sget-object v0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->notifications:[I

    const/4 v1, 0x0

    const/16 v2, 0x14

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mIsEnabled:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mSBrowserTabControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator$1;-><init>(Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    return-void
.end method


# virtual methods
.method public isAnimationEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notify_newWebPageIsAboutToOpen(Lorg/chromium/content/browser/ContentView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mWebPageNavegationListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mWebPageNavegationListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;->notify_newWebPageIsAboutToOpen(Lorg/chromium/content/browser/ContentView;)V

    :cond_0
    return-void
.end method

.method public notify_newWebPageIsNowAvailable(Lorg/chromium/content/browser/ContentView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mWebPageNavegationListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mWebPageNavegationListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;->notify_newWebPageIsNowAvailable(Lorg/chromium/content/browser/ContentView;)V

    :cond_0
    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mSBrowserTabControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mSBrowserTabControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mSBrowserTabControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mSBrowserTabControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mSBrowserTabControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mSBrowserTabControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mSBrowserTabControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postAnimantion()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mPreviousTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mPreviousTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->postTabChange(Lorg/chromium/content/browser/ContentView;Lorg/chromium/content/browser/ContentView;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mPreviousTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-void
.end method

.method public postTabChange(Lorg/chromium/content/browser/ContentView;Lorg/chromium/content/browser/ContentView;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mBrowserTabFocusListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mBrowserTabFocusListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mPreviousTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;->postTabChange(Lorg/chromium/content/browser/ContentView;Lorg/chromium/content/browser/ContentView;)V

    :cond_0
    return-void
.end method

.method public preAnimantion()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mPreviousTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mPreviousTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->preTabChange(Lorg/chromium/content/browser/ContentView;Lorg/chromium/content/browser/ContentView;)V

    :cond_0
    return-void
.end method

.method public preTabChange(Lorg/chromium/content/browser/ContentView;Lorg/chromium/content/browser/ContentView;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mBrowserTabFocusListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mBrowserTabFocusListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mPreviousTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;->preTabChange(Lorg/chromium/content/browser/ContentView;Lorg/chromium/content/browser/ContentView;)V

    :cond_0
    return-void
.end method

.method public registerForNotificationsToEnableAnimation()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->notifications:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    :cond_0
    return-void
.end method

.method public setBrowserTabFocusListener(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mBrowserTabFocusListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;

    return-void
.end method

.method public setCurrentTab(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_0
    return-void
.end method

.method public setPrevioustab(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mPreviousTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mPreviousTab:Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_0
    return-void
.end method

.method public setWebPageNavegationListener(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mWebPageNavegationListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;

    return-void
.end method

.method public switchFromMultiWindow()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v0

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v2, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/chromium/content/browser/ContentView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public switchToMultiWindow()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v0

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-direct {v1, v2, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/chromium/content/browser/ContentView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public tabCreating(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->preAnimantion()V

    :cond_0
    return-void
.end method

.method public tabSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mSBrowserTabControl:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->postAnimantion()V

    return-void
.end method
