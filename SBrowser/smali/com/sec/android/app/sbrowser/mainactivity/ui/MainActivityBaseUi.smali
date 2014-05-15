.class public abstract Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;
.super Ljava/lang/Object;
.source "MainActivityBaseUi.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/UI;
.implements Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static mTabStripHeight:F

.field private static safeGuardMargin:I


# instance fields
.field private final SEND_TOOLBAR_BITMAP:I

.field private final TITLE:Ljava/lang/String;

.field private final URL:Ljava/lang/String;

.field private easyModeOn:I

.field private findText:Ljava/lang/String;

.field private flagCloseThisPageOnly:Z

.field isAlreadySmallSize:Z

.field protected volatile isMultiWindowSingleActivityEnabled:Z

.field protected isUrlBarActive:Z

.field protected mActionBar:Landroid/app/ActionBar;

.field protected mBaseLayout:Landroid/widget/FrameLayout;

.field private final mBitmapHandler:Landroid/os/Handler;

.field private mBottomBarUi:Landroid/view/View;

.field private mBottomBarUiEasymode:Landroid/view/View;

.field protected mBottomContainer:Landroid/view/ViewGroup;

.field protected mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

.field protected mContentContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field protected mControlContainer:Landroid/view/ViewGroup;

.field private mCurrentConfiguration:I

.field private mCurrentKBConfiguration:I

.field private mExtractModeContainer:Landroid/widget/FrameLayout;

.field private mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

.field private mHideUrlBarPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

.field protected mIsQuickLaunchViewOnTop:Z

.field private mMainToolBarView:Landroid/view/View;

.field protected mMaxQuickLaunchCount:I

.field private mMenu:Landroid/view/Menu;

.field protected mNewTabStub:Landroid/view/ViewStub;

.field protected mPinnedMostVisitedContainer:Landroid/view/ViewGroup;

.field protected mQuickLaunchContainer:Landroid/view/ViewGroup;

.field private mSavePageMenuEnabled:Z

.field private mShowExtractMode:Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;

.field private mShowExtractModeContainer:Landroid/widget/FrameLayout;

.field private mTabList:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

.field private mTabManagerPreviewContainer:Landroid/widget/FrameLayout;

.field protected mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

.field protected mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

.field private mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

.field protected mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

.field public mUseBrightness:Z

.field public mUseSystemBrightness:Z

.field mWindow:Landroid/view/Window;

.field metrics:Landroid/util/DisplayMetrics;

.field progressBarHeight:I

.field statusBarHeight:I

.field public tabmanagerBundle:Landroid/graphics/Bitmap;

.field private final thumbnailHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->safeGuardMargin:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/BrowserFeature;->useBrightness()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUseBrightness:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/BrowserFeature;->useSystemBrightness()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUseSystemBrightness:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mIsQuickLaunchViewOnTop:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mMaxQuickLaunchCount:I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mNewTabStub:Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mCurrentKBConfiguration:I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isMultiWindowSingleActivityEnabled:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabManagerPreviewContainer:Landroid/widget/FrameLayout;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->findText:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mSavePageMenuEnabled:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mMenu:Landroid/view/Menu;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mWindow:Landroid/view/Window;

    iput v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->statusBarHeight:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->progressBarHeight:I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isAlreadySmallSize:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->metrics:Landroid/util/DisplayMetrics;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isUrlBarActive:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->flagCloseThisPageOnly:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->thumbnailHandler:Landroid/os/Handler;

    const-string v0, "url"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->URL:Ljava/lang/String;

    const-string v0, "title"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->TITLE:Ljava/lang/String;

    const/16 v0, 0x69

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->SEND_TOOLBAR_BITMAP:I

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$6;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBitmapHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabManagerPreviewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    return v0
.end method

.method private addPintab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private displayQuickLaunch()V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v1, "mostvisited_current_url"

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isQuickLaunchPageSet()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mPinnedMostVisitedContainer:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    sget-object v4, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->showQuickLaunchView(Z)V

    :cond_1
    return-void
.end method

.method private easyModeOnConfigChanged()V
    .locals 8

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getWindowMode()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f09

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const/4 v0, 0x0

    add-float v6, v4, v5

    float-to-int v2, v6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsBottomBarEnabled()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09001a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v7, v0

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isHideURLPrefEnabled()Z

    move-result v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_3

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isQuickLaunchPageSet()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, 0x0

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_1
.end method

.method private getContentAreaMarginHeight()I
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    int-to-float v2, v1

    add-float/2addr v0, v2

    float-to-int v2, v0

    return v2
.end method

.method private getRssLinks(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getRssLinks(Ljava/lang/String;)V

    return-void
.end method

.method private initializeEasyModeUi(Landroid/widget/FrameLayout;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isQuickLaunchPageSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->showQuickLaunchView(Z)V

    :cond_0
    return-void
.end method

.method private initilizeContentContainer(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 12

    const/4 v1, 0x0

    const v0, 0x7f0a0003

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a0007

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBottomContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a0006

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0a0205

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mPinnedMostVisitedContainer:Landroid/view/ViewGroup;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/sbrowser/ControlContainerUIUpdator;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lorg/samsung/base/Feature;->isQuickLaunchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0055

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f09

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabStripHeight:F

    sget v7, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabStripHeight:F

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    const/4 v9, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isSmallWindowApplicable()Z

    move-result v0

    if-nez v0, :cond_1

    add-float v0, v7, v8

    float-to-int v9, v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getWindowMode()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isHideURLPrefEnabled()Z

    move-result v10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v0, v2, :cond_4

    const/4 v11, 0x1

    :goto_1
    if-nez v11, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v10, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_2
    const v0, 0x7f0a0009

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mMainToolBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mMainToolBarView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    const v0, 0x7f0a000a

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBottomBarUi:Landroid/view/View;

    const v0, 0x7f0a000b

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBottomBarUiEasymode:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->initializeUiElements()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getSBrowserMobileApplication()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isHideURLPrefEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->TAG:Ljava/lang/String;

    const-string v1, "HIDEURL - intializing ToolBarUITranslations"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBottomContainer:Landroid/view/ViewGroup;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    goto/16 :goto_0

    :cond_4
    move v11, v1

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v1, v6

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2
.end method

.method private isEmergencyMode()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "emergency_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isFullScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method private isTalkBackOn()Z
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContext:Landroid/content/Context;

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadSubviewHeights(Landroid/content/Context;)V
    .locals 5

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mWindow:Landroid/view/Window;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getsSmallWindowSize()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->statusBarHeight:I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->progressBarHeight:I

    :cond_1
    return-void
.end method

.method private registerForHideUrlPrefChange()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mHideUrlBarPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mHideUrlBarPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$7;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mHideUrlBarPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHideUrlPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mHideUrlBarPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private setFindTextToolbar()V
    .locals 4

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0a0209

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->setFindToolBar(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;)V

    return-void
.end method

.method private unRegisterForHideUrlPrefChange()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mHideUrlBarPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHideUrlPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mHideUrlBarPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mHideUrlBarPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public OnDragEventDelegate(Landroid/view/DragEvent;)V
    .locals 0

    return-void
.end method

.method public OnHoverEventDelegate(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public OnScrollBegin(Z)V
    .locals 0

    return-void
.end method

.method public OnScrollEnd(II)V
    .locals 0

    return-void
.end method

.method public OnTouchEventDelegate(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public OnUrlBarActive()V
    .locals 0

    return-void
.end method

.method public autoHideResume()V
    .locals 0

    return-void
.end method

.method public autoHideResumeSendBitmap()V
    .locals 0

    return-void
.end method

.method public cancelHidingUrlBar()V
    .locals 0

    return-void
.end method

.method public captureBitmap()Landroid/graphics/Bitmap;
    .locals 12

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    :cond_0
    if-eqz v8, :cond_2

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMainToolBarView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v4, v2, v1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMainToolBarView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :goto_0
    return-object v7

    :cond_1
    move-object v7, v11

    goto :goto_0

    :catch_0
    move-exception v10

    sget-object v1, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->TAG:Ljava/lang/String;

    const-string v2, "getDrawingCache bitmap is recycled by Android Framework"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v7, v11

    goto :goto_0

    :catch_1
    move-exception v9

    sget-object v1, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->TAG:Ljava/lang/String;

    const-string v2, "getDrawingCache is null because it is garbage collected by Android Framework"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object v7, v11

    goto :goto_0
.end method

.method public changeVisibiblityOfNewTabStub()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mNewTabStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mNewTabStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public checkUtilityConditionsForHideUrl()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isHideURLPrefEnabled()Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-lt v3, v4, :cond_2

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isTalkBackOn()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isHWKeypadConnected()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public createNewMultiWindowTab()V
    .locals 0

    return-void
.end method

.method public dismissExtractModePopup()V
    .locals 2

    const/16 v1, 0x8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsExtractModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mExtractModeContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mExtractModeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mExtractModeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mShowExtractModeContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mShowExtractModeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mShowExtractModeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public dismissMenuOnAutoHideUrlBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->isPopupMenuDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->dismissPopupMenu()V

    :cond_0
    return-void
.end method

.method public displayTabPreview(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabManagerPreviewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabManagerPreviewContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabManagerPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabManagerPreviewContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v2

    const v3, 0x7f05001d

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabManagerPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabManagerPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$2;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public findOnPage(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->checkUtilityConditionsForHideUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isInfoBarDisplayed()Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setBottombarVisibility(Z)V

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$1;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->hideKeyboard(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBottomBar()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBottomBarUi:Landroid/view/View;

    return-object v0
.end method

.method public getBottomBarEasymode()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBottomBarUiEasymode:Landroid/view/View;

    return-object v0
.end method

.method public getBottomBarUi()Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBottomBarUiEasymode:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBottomBarUi:Landroid/view/View;

    goto :goto_0
.end method

.method public getBottomToolbarLayout()Landroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    return-object v0
.end method

.method public getContentContainerLayout()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getControlContainer()Lcom/sec/android/app/sbrowser/toolbar/ui/ControlContainer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFindTextToolbarWrapper()Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    return-object v0
.end method

.method public getFlagCloseThisPageOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->flagCloseThisPageOnly:Z

    return v0
.end method

.method public getMainToolBarView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mMainToolBarView:Landroid/view/View;

    return-object v0
.end method

.method public getPagerContainer()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPagerContainerVisibility()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getReadingListMenuEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mSavePageMenuEnabled:Z

    return v0
.end method

.method public getSBrowserMobileApplication()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v0

    return-object v0
.end method

.method public getTabViewPager()Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    return-object v0
.end method

.method public getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    return-object v0
.end method

.method public bridge synthetic getTopToolbarLayout()Landroid/view/ViewGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getTopToolbarLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getTopToolbarLayout()Landroid/widget/LinearLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUndoBarLayout()Landroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getmToolBarUITranslations()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    return-object v0
.end method

.method public hideControlsForContextualMenuBar()V
    .locals 0

    return-void
.end method

.method public hidePopup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabList:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabList:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabList:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public hideUrlBarWithDelay(I)V
    .locals 0

    return-void
.end method

.method public inflateAndInitializeUi(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContext:Landroid/content/Context;

    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040080

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->initializeEasyModeUi(Landroid/widget/FrameLayout;)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->initilizeContentContainer(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getMultiInstanceTabDragAndDropEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mCurrentConfiguration:I

    return-void

    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007f

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method public inflateTabNavigatorUi()V
    .locals 0

    return-void
.end method

.method public initializeUI(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->loadSubviewHeights(Landroid/content/Context;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->setAdapter(Landroid/widget/Adapter;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setFindTextToolbar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->onNativeLibraryReady()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->registerActionModeCallBacks(Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->setControl(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    return-void
.end method

.method public isFindTextToolbarShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHWKeypadConnected()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isQuickLaunchPageSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mIsQuickLaunchViewOnTop:Z

    return v0
.end method

.method public isUrlBarActive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUrlBookmarked()Z
    .locals 4

    const v3, 0x7f0a0337

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isViewPagerActive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public matchParent()V
    .locals 0

    return-void
.end method

.method public multiWindowOnResume()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 5

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setBottombarVisibility(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->dismiss()V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getFullScreenManager()Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->setbackKeyPressed(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->checkUtilityConditionsForHideUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->isInFullScreenMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->exitFullscreen()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->isPopupMenuDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->dismissPopupMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->showPopupMenu()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabList:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabList:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabList:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getFullScreenManager()Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getFullScreenManager()Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->isInFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOnConfigChanged()V

    :cond_2
    if-nez p1, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mCurrentConfiguration:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->onOrientationChanged(I)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mCurrentKBConfiguration:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v0, v1, :cond_3

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mCurrentKBConfiguration:I

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->setMarginsWhenFindOnPageOperation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->unRegisterScrollOrFlingListner(Z)V

    goto :goto_0

    :cond_6
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->checkUtilityConditionsForHideUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    if-nez v0, :cond_7

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBottomContainer:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->removeMarginsWhenFindOnPageOperationDone(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->attachCurrentTab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->registerScrollOrFlingListner(Lcom/sec/android/app/sbrowser/common/Tab;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setContextMenuIsShown(Z)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/chromium/content/browser/ContentView;->setContextMenuInfoToContentView(Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;)V

    instance-of v6, v3, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;

    if-eqz v6, :cond_0

    move-object v2, v3

    check-cast v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isCustomMenu()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    :cond_0
    :goto_0
    move v5, v4

    :goto_1
    return v5

    :cond_1
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v6, v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->unfilteredLinkUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->saveToClipboard(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v4, 0x0

    goto :goto_0

    :sswitch_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v6, v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->openDailPad(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v6, v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->openLink(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_4
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v6, v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->openLinkNewTab(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_5
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v6, v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->openIncognitoModeTab(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_6
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v6, v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->srcUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->openImage(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_7
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v6, v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->srcUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->openImageInNewTab(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_8
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v6, v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->saveLink(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_9
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v6, v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkText:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->copyLinkText(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_a
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v6, v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->copyLinkAddress(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_b
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v6, v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->srcUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->saveImage(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_c
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v6, v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->copyImage(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_d
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v6, v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->srcUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->decodeImage(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_e
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-static {v5}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->selectLastTouchText(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_f
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v6, v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->copyNumber(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_10
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v6, v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->openContact(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0037 -> :sswitch_0
        0x7f0a02fc -> :sswitch_3
        0x7f0a02fd -> :sswitch_4
        0x7f0a02fe -> :sswitch_5
        0x7f0a02ff -> :sswitch_8
        0x7f0a0300 -> :sswitch_a
        0x7f0a0301 -> :sswitch_9
        0x7f0a0302 -> :sswitch_e
        0x7f0a0303 -> :sswitch_1
        0x7f0a0304 -> :sswitch_b
        0x7f0a0305 -> :sswitch_c
        0x7f0a0306 -> :sswitch_6
        0x7f0a0307 -> :sswitch_7
        0x7f0a0308 -> :sswitch_d
        0x7f0a030a -> :sswitch_2
        0x7f0a030b -> :sswitch_10
        0x7f0a030c -> :sswitch_f
        0x7f0a030d -> :sswitch_e
    .end sparse-switch
.end method

.method public abstract onCreate()V
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v6, p2, Lorg/chromium/content/browser/ContentView;

    if-eqz v6, :cond_0

    move-object v1, p3

    check-cast v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isCustomMenu()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->getCustomItemSize()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->getCustomItemAt(I)Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo$CustomMenuItem;

    move-result-object v6

    iget-object v4, v6, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo$CustomMenuItem;->mLabel:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {p1, v6, v2, v7, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isAnchor:Z

    if-nez v6, :cond_3

    iget-boolean v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSelectedText:Z

    if-nez v6, :cond_3

    iget-boolean v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isImage:Z

    if-nez v6, :cond_3

    iget-boolean v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isEditable:Z

    if-eqz v6, :cond_0

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    const v7, 0x7f0e000d

    invoke-virtual {v6, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v6

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->clearTextSelection()V

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v6

    iget-object v6, v6, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandler:Lorg/samsung/content/sbrowser/SelectionHandler;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SelectionHandler;->clearSelectClosestWordMessageQueue()V

    const v6, 0x7f0a02fb

    iget-boolean v7, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcAnchor:Z

    invoke-interface {p1, v6, v7}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v6

    invoke-virtual {v6}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->loadsImagesAutomatically()Z

    move-result v6

    if-eqz v6, :cond_f

    const v6, 0x7f0a0303

    iget-boolean v7, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isImage:Z

    invoke-interface {p1, v6, v7}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    :goto_2
    const v6, 0x7f0a0309

    iget-boolean v7, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcTelAnchor:Z

    invoke-interface {p1, v6, v7}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    iget-boolean v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isImage:Z

    if-eqz v6, :cond_4

    const v6, 0x7f0a02fb

    iget-boolean v7, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcImageAnchor:Z

    invoke-interface {p1, v6, v7}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    :cond_4
    iget-boolean v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcTelAnchor:Z

    if-eqz v6, :cond_5

    const v6, 0x7f0a02fb

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    const v6, 0x7f0a0303

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    const v6, 0x7f0a0309

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-static {v6}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->selectLastTouchText(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;)V

    :cond_5
    iget-object v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const v6, 0x7f0a02fd

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v6, 0x7f0a02fe

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    const-string v6, "CscFeature_Web_DisableMenuSaveContentsInAnchorLink"

    invoke-static {v6}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    iget-boolean v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcAnchor:Z

    if-nez v6, :cond_7

    iget-boolean v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcImageAnchor:Z

    if-eqz v6, :cond_8

    :cond_7
    const v6, 0x7f0a02ff

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_8
    iget-boolean v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcAnchor:Z

    if-eqz v6, :cond_10

    iget-boolean v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isImage:Z

    if-nez v6, :cond_10

    iget-object v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_9
    :goto_3
    const v6, 0x7f0a0308

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v6, 0x7f0a02fe

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isImage:Z

    if-eqz v6, :cond_a

    const v6, 0x7f0a0302

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v6, 0x7f0a0307

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_a
    iget-object v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkText:Ljava/lang/String;

    if-eqz v6, :cond_b

    iget-object v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_b
    const v6, 0x7f0a0302

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_c
    iget-boolean v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcAnchor:Z

    if-eqz v6, :cond_d

    const v6, 0x7f0a030a

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v6, 0x7f0a030b

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_d
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v6, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isCurrentTabIncognito()Z

    move-result v6

    if-eqz v6, :cond_e

    const v6, 0x7f0a02fe

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_e
    const v6, 0x7f0a0301

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    const-string v7, "javascript"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f0a0301

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_f
    const v6, 0x7f0a0303

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    goto/16 :goto_2

    :cond_10
    iget-boolean v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isImage:Z

    if-eqz v6, :cond_11

    iget-object v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->srcUrl:Ljava/lang/String;

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_3

    :cond_11
    iget-boolean v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcTelAnchor:Z

    if-eqz v6, :cond_12

    iget-object v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    const/4 v7, 0x4

    iget-object v8, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_3

    :cond_12
    iget-object v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkText:Ljava/lang/String;

    if-nez v6, :cond_13

    iget-object v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    :cond_13
    iget-object v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const v6, 0x7f0a0302

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mMenu:Landroid/view/Menu;

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->TAG:Ljava/lang/String;

    const-string v1, "HIDEURL  - onDestroy() - mToolBarUITranslations.cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->cleanUp()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    :cond_0
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getFullScreenManager()Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->setMenuIsShown(Z)V

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->exitFullscreen()V

    return-void
.end method

.method public onOptionItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move v4, v6

    :goto_0
    return v4

    :sswitch_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->gotohomepage()V

    :cond_0
    :goto_1
    :sswitch_1
    move v4, v5

    goto :goto_0

    :sswitch_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isMaxTabLimitReached()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$4;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->hideKeyboard(Ljava/lang/Runnable;)V

    goto :goto_1

    :sswitch_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isMaxTabLimitReached()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$5;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->hideKeyboard(Ljava/lang/Runnable;)V

    goto :goto_1

    :sswitch_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isMaxTabLimitReached()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->newIncognitoTab()V

    goto :goto_1

    :sswitch_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->addShortcut(Lorg/chromium/content/browser/ContentView;)V

    goto :goto_1

    :sswitch_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewUxQuickAccessEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->addPintab(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsSbrRSSFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getRssLinks(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_7
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->readLater(Z)V

    goto/16 :goto_1

    :sswitch_8
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->shareUrl(Lorg/chromium/content/browser/ContentView;)V

    goto/16 :goto_1

    :sswitch_9
    const-string v4, ""

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->findText:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->findText:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->findOnPage(Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    :sswitch_a
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isMaxTabLimitReached()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->changeToIncognitoMode(Lorg/chromium/content/browser/ContentView;)V

    goto/16 :goto_1

    :sswitch_b
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->gotoHistory()V

    goto/16 :goto_1

    :sswitch_c
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->setFromSconnect(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->startPrint()V

    goto/16 :goto_1

    :sswitch_d
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->addBookmark()V

    goto/16 :goto_1

    :sswitch_e
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->showDesktopView()V

    goto/16 :goto_1

    :sswitch_f
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->setBrightness()V

    goto/16 :goto_1

    :sswitch_10
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->settings()V

    goto/16 :goto_1

    :sswitch_11
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->launchHelp()V

    goto/16 :goto_1

    :sswitch_12
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->syncTabs()V

    goto/16 :goto_1

    :sswitch_13
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->exit()V

    goto/16 :goto_1

    :sswitch_14
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->closeAllTabs()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0015 -> :sswitch_10
        0x7f0a003d -> :sswitch_c
        0x7f0a003e -> :sswitch_b
        0x7f0a0325 -> :sswitch_0
        0x7f0a0326 -> :sswitch_2
        0x7f0a0327 -> :sswitch_3
        0x7f0a0328 -> :sswitch_4
        0x7f0a0329 -> :sswitch_6
        0x7f0a032a -> :sswitch_5
        0x7f0a032b -> :sswitch_7
        0x7f0a032c -> :sswitch_8
        0x7f0a032d -> :sswitch_9
        0x7f0a032e -> :sswitch_a
        0x7f0a032f -> :sswitch_e
        0x7f0a0330 -> :sswitch_f
        0x7f0a0331 -> :sswitch_11
        0x7f0a0332 -> :sswitch_13
        0x7f0a0334 -> :sswitch_4
        0x7f0a0335 -> :sswitch_12
        0x7f0a0337 -> :sswitch_d
        0x7f0a0338 -> :sswitch_1
        0x7f0a0339 -> :sswitch_1
        0x7f0a033a -> :sswitch_14
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->unRegisterForHideUrlPrefChange()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isToolbarVisible()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->setAssociatedToolbarDisplayState(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mMenu:Landroid/view/Menu;

    const-string v14, "ro.csc.sales_code"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v14

    if-nez v14, :cond_0

    sget-object v14, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->TAG:Ljava/lang/String;

    const-string v15, "onPrepareOptionsMenu : control is null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v14, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->TAG:Ljava/lang/String;

    const-string v15, "onPrepareOptionsMenu : chromeView is null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v14

    invoke-virtual {v14}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v14

    invoke-virtual {v14}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v14

    invoke-virtual {v14}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->clearTextSelection()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v14, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getFullScreenManager()Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->isInFullScreenMode()Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->setMenuIsShown(Z)V

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->exitFullscreen()V

    :cond_3
    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v12

    sget-boolean v14, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isMultiWindowSingleActivityEnabled:Z

    if-eqz v14, :cond_4

    const v14, 0x7f0a0333

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const v14, 0x7f0a0324

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_4
    const v14, 0x7f0a0333

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Landroid/view/Menu;->setGroupVisible(IZ)V

    :cond_5
    if-eqz v11, :cond_6

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v14

    if-gtz v14, :cond_7

    :cond_6
    if-eqz v12, :cond_29

    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v14

    if-lez v14, :cond_29

    :cond_7
    const v14, 0x7f0a0324

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const v14, 0x7f0a0324

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    const-string v14, "CscFeature_Web_EnableHomepageOption"

    invoke-static {v14}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_11

    const v14, 0x7f0a0325

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getWindowMode()I

    move-result v14

    if-nez v14, :cond_18

    const v14, 0x7f0a0326

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a0327

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a0328

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a0329

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032a

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032b

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v3, :cond_12

    sget-object v14, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "chrome://"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    :cond_8
    sget-object v14, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/mostvisited.mhtml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/pinned.mhtml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    const v14, 0x7f0a0327

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    const v14, 0x7f0a032d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    const v14, 0x7f0a032e

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032f

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a0330

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a003d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a0015

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v14, "VZW"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    const v14, 0x7f0a0331

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isEmergencyMode()Z

    move-result v14

    if-eqz v14, :cond_a

    const v14, 0x7f0a0331

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_a
    :goto_4
    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getIsChildMode()Z

    move-result v14

    if-nez v14, :cond_b

    const v14, 0x7f0a0328

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_b
    const v14, 0x7f0a032c

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032e

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getIsChildMode()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    const v14, 0x7f0a032e

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getWindowMode()I

    move-result v14

    if-eqz v14, :cond_e

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_26

    const v14, 0x7f0a0329

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_e
    const-string v14, "CscFeature_Web_AddOptionToTerminate"

    invoke-static {v14}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2a

    const v14, 0x7f0a0332

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getIsMobilePrintAvailable()Z

    move-result v14

    if-nez v14, :cond_f

    const v14, 0x7f0a003d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v14, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "sec_container_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_10

    const v14, 0x7f0a0331

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a003d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_10
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_11
    const v14, 0x7f0a0325

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_12
    const-string v14, ""

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    const-string v14, "about:blank"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v14

    if-eqz v14, :cond_14

    :cond_13
    const v14, 0x7f0a032c

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_14
    const-string v14, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_15

    const-string v14, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    :cond_15
    const v14, 0x7f0a032c

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_16
    const v14, 0x7f0a032c

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_17
    const v14, 0x7f0a0331

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_18
    const v14, 0x7f0a0326

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a0328

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a0329

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032a

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a0327

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePage()Z

    move-result v14

    if-eqz v14, :cond_20

    const v14, 0x7f0a032b

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_6
    const v14, 0x7f0a032c

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032e

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032f

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032f

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getUseDesktopUserAgent()Z

    move-result v15

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a0330

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a003d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a0015

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControllerPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "com.samsung.helphub"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_22

    const-string v14, "VZW"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_21

    const v14, 0x7f0a0331

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isEmergencyMode()Z

    move-result v14

    if-eqz v14, :cond_19

    const v14, 0x7f0a032a

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a003d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a0331

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_19
    if-eqz v3, :cond_23

    sget-object v14, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "chrome://"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_23

    :cond_1a
    const v14, 0x7f0a032a

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032b

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032c

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032f

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-object v14, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/mostvisited.mhtml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/pinned.mhtml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1b

    const v14, 0x7f0a0329

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a0327

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1b
    const-string v14, "chrome://"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1c

    const v14, 0x7f0a032d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a003d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1c
    :goto_8
    const-string v13, ""

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getReadingListUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_25

    if-eqz v9, :cond_25

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_25

    move-object v13, v9

    :goto_9
    const-string v14, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1d

    const-string v14, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1d

    const-string v14, "chrome://newtab/#incognito"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e

    :cond_1d
    const v14, 0x7f0a032c

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a003d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getUtilityController()Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getUtilityController()Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->isSameUrlPinned(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getUtilityController()Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->isUrlPinned(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    :cond_1f
    const v14, 0x7f0a0329

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_20
    const v14, 0x7f0a032b

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_21
    const v14, 0x7f0a0331

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v4

    const v14, 0x7f0a0331

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    :cond_22
    const v14, 0x7f0a0331

    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    :cond_23
    const-string v14, ""

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_24

    const-string v14, "about:blank"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_24

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v14

    if-eqz v14, :cond_1c

    :cond_24
    const v14, 0x7f0a0329

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032a

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032b

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032c

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a032f

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v14, 0x7f0a003d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_8

    :cond_25
    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_9

    :cond_26
    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v14

    const-string v15, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_27

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v14

    const-string v15, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    :cond_27
    const v14, 0x7f0a0329

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v6, 0x0

    :goto_a
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v14

    if-ge v6, v14, :cond_e

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v14

    if-nez v14, :cond_28

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_29
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_2a
    const v14, 0x7f0a0332

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5
.end method

.method public onRenderProcessSwap(II)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->checkUtilityConditionsForHideUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBottomContainer:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->attachCurrentTab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->registerScrollOrFlingListner(Lcom/sec/android/app/sbrowser/common/Tab;)V

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->isAssociatedToolBarStateDisplayed()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->showToolBarUsingTopControl()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->registerForHideUrlPrefChange()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setTopMarginForChromeView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isSmallWindowApplicable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isMultiWindowRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->matchParent()V

    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    instance-of v0, v0, Lorg/samsung/content/sbrowser/SbrContentView;

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    check-cast v0, Lorg/samsung/content/sbrowser/SbrContentView;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentView;->showToolBar(I)V

    :cond_3
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->isQuickLaunchPageSet()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->showQuickLaunchView(Z)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->hideToolBarUsingTopControl()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->unRegisterScrollOrFlingListner(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->setMarginsWhenFindOnPageOperation()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v8}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->toggleWindowHeight(Z)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->isQuickLaunchPageSet()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->showQuickLaunchView(Z)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v8}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->showQuickLaunchView(Z)V

    goto :goto_2
.end method

.method public onTabClosed(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onTabClosed(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onTabCreated(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mNewTabStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mNewTabStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onUrlBarBitmapUpdated()V
    .locals 0

    return-void
.end method

.method public registerForNotification()V
    .locals 0

    return-void
.end method

.method public removeTabPreview(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;Z)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabManagerPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->setTabPreview(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabManagerPreviewContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v1

    const v2, 0x7f05001c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabManagerPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabManagerPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi$3;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public requestFocusToMostVisitedLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public requestWindowFeature(Landroid/content/Context;)V
    .locals 1

    check-cast p1, Landroid/app/Activity;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    return-void
.end method

.method public runBookmarkDbThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBottomMargin(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->checkUtilityConditionsForHideUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/chromium/content/browser/ContentViewCore;->setViewportSizeOffset(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->setViewportSizeOffset(II)V

    goto :goto_0
.end method

.method public setBottombarVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBottomContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBottomContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setChromeViewHolder(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->setAdapter(Landroid/widget/Adapter;)V

    return-void
.end method

.method public setController(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    return-void
.end method

.method public setDelegateControl()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->setControl(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    return-void
.end method

.method public setExtractModeVisibility(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsExtractModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mExtractModeContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mExtractModeContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setFavicon(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    const-string v1, "tabId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setFavicon(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setFlagCloseThisPageOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->flagCloseThisPageOnly:Z

    return-void
.end method

.method public setFullScreenMode()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method public setHomeScreenModeOnPostLibLoad()V
    .locals 4

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getWindowMode()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    if-eq v2, v1, :cond_1

    :cond_0
    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setHomeScreenMode(I)V

    :cond_1
    return-void
.end method

.method public setReadingListMenuEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mSavePageMenuEnabled:Z

    return-void
.end method

.method public setShowExtractMode(Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mShowExtractMode:Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;

    return-void
.end method

.method public setShowExtractModeVisibility(ZZ)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsExtractModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mShowExtractMode:Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/extractmode/showExtractMode;->setTranslateButton(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mShowExtractModeContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mShowExtractModeContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStateofURL(I)V
    .locals 0

    return-void
.end method

.method public setTopMarginForChromeView()V
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f090001

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const/high16 v5, 0x7f09

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isSmallWindowApplicable()Z

    move-result v5

    if-nez v5, :cond_0

    add-float v5, v3, v4

    float-to-int v1, v5

    :cond_0
    iget v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    if-nez v5, :cond_1

    const v5, 0x7f09001a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->checkUtilityConditionsForHideUrl()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_1
    return-void

    :cond_1
    const v5, 0x7f090019

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v6, v0

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method public setUiOnScreen(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->inflateAndInitializeUi(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public setUrlBarActiveFlag(Z)V
    .locals 0

    return-void
.end method

.method public showControlsForContextualMenuBar(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public showQuickLaunchView(Z)V
    .locals 2

    invoke-static {}, Lorg/samsung/base/Feature;->isQuickLaunchEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_1
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mIsQuickLaunchViewOnTop:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_1
.end method

.method public showTabsPopUp(Landroid/view/View;Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    const v1, 0x103006e

    new-instance v2, Landroid/view/ContextThemeWrapper;

    move-object v3, p2

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabList:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    if-nez v3, :cond_0

    new-instance v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    check-cast p2, Landroid/app/Activity;

    check-cast p2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabList:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabList:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    iget v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mCurrentConfiguration:I

    invoke-virtual {v3, v2, p1, v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->createPopup(Landroid/content/Context;Landroid/view/View;I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabList:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabList:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->dismiss()V

    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mTabList:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4, v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->show(ZZZ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public switchTabViewPagerVisibility(Z)V
    .locals 0

    return-void
.end method

.method public toggleWindowHeight(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mWindow:Landroid/view/Window;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isMultiWindowRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->matchParent()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getWindowMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    :cond_2
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isAlreadySmallSize:Z

    if-eq v0, v1, :cond_0

    :cond_3
    if-ne p1, v1, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isAlreadySmallSize:Z

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->toggleWindowHeightInternal(Z)V

    goto :goto_0
.end method

.method public toggleWindowHeightInternal(Z)V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isMultiWindowRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->matchParent()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->statusBarHeight:I

    sget v4, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->safeGuardMargin:I

    add-int/2addr v3, v4

    sub-int v0, v2, v3

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->setHolderToMatchParentWindow(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isAlreadySmallSize:Z

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->statusBarHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getContentAreaMarginHeight()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->progressBarHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isAlreadySmallSize:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->setHolderToMatchParentWindow(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public updateEasyModeLayout(I)V
    .locals 13

    const/16 v12, 0x69

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ToolBarAutoHider : updateEasyModeLayout easyModeOn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    if-eq v9, p1, :cond_8

    :cond_1
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v9}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateState()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f09

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v10, 0x258

    if-lt v9, v10, :cond_9

    move v4, v7

    :goto_0
    iget v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    if-eq v9, p1, :cond_a

    if-nez p1, :cond_a

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeaturePrefFlag()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v9, v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->setEasyModeFlag(Z)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v9, v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->setUrlBarHidden(Z)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->setUrlBarActiveFlag(Z)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_2
    :goto_1
    iput p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    iget v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f09001a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolBarUITranslations:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    iget v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    invoke-virtual {v7, v9}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->setEasyModeValue(I)V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isSmallWindowApplicable()Z

    move-result v7

    if-nez v7, :cond_4

    add-float v7, v5, v6

    float-to-int v2, v7

    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isHideURLPrefEnabled()Z

    move-result v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v3, :cond_d

    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isQuickLaunchPageSet()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsBottomBarEnabled()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v8, v0

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBitmapHandler:Landroid/os/Handler;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBitmapHandler:Landroid/os/Handler;

    invoke-virtual {v7, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBitmapHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x258

    invoke-virtual {v7, v12, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    return-void

    :cond_9
    move v4, v8

    goto/16 :goto_0

    :cond_a
    iget v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->easyModeOn:I

    if-eq v9, p1, :cond_2

    if-ne p1, v7, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v7, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->initializeLayerPositions()V

    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_c
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f090019

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto/16 :goto_2

    :cond_d
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_e
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_4
.end method

.method public updateLoadProgress(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarUi:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->updateLoadProgress(II)V

    :cond_0
    return-void
.end method

.method public updateUrlBarFocus(Z)V
    .locals 0

    return-void
.end method

.method public updateView(I)V
    .locals 0

    return-void
.end method
