.class public Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;
.super Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;
.source "MainActivityPhoneUi.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;


# static fields
.field private static final FIRST_INSTANCE_INDEX:I = 0x1

.field private static final HIDE_URL_MESSAGE:I = 0x66

.field private static final INVALID_INSTANCE_INDEX:I = 0x0

.field private static final SECOND_INSTANCE_INDEX:I = 0x2

.field private static final SEND_TOOLBAR_BITMAP:I = 0x65

.field private static final SLIDE_DURATION:I = 0xc8

.field protected static final TAG:Ljava/lang/String; = "PhoneUi"


# instance fields
.field cpuMinFreqBooster:Landroid/os/DVFSHelper;

.field private current_orientation:I

.field private descendantFocusability:I

.field private final handler:Landroid/os/Handler;

.field private isActivityPaused:Z

.field private isFirstLaunch:Z

.field private isOrientationChange:Z

.field private final mAutoHideHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

.field private mCurrentSelectedPinView:Z

.field private mIsHomeButtonPressed:Z

.field private mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

.field private mMultiTabFragment:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

.field private mObserver:Ljava/util/Observer;

.field private mStateofURL:I

.field private mTabNavigatorView:Landroid/view/View;

.field private mTabSwitchAnimator:Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

.field private mToolBarVisibleRect:I

.field mUndoView:Landroid/view/View;

.field mUndoViewStub:Landroid/view/ViewStub;

.field private prevTabCount:I

.field private prev_orientation:I

.field supportedCPUFreqTable:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mTabSwitchAnimator:Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isOrientationChange:Z

    iput v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mStateofURL:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->current_orientation:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->prev_orientation:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isActivityPaused:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->prevTabCount:I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mUndoViewStub:Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mUndoView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isFirstLaunch:Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mObserver:Ljava/util/Observer;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mTabNavigatorView:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$1;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$9;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mAutoHideHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mMaxQuickLaunchCount:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mMultiTabFragment:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    return-object v0
.end method

.method private handleMultiwindowOnClick(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$3;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$3;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->setOnOverviewClickHandler(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private handleQuickAccessFirstLaunch()V
    .locals 7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v1, "current_url"

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    if-nez v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewUxQuickAccessEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-direct {v4, v5, v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Landroid/widget/FrameLayout;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->setQuickAccessView()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    const-string v4, "VerificationLog"

    const-string v5, "showQuickLaunchView first launch mainActPhoneUI - end"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public OnDragEventDelegate(Landroid/view/DragEvent;)V
    .locals 3

    const-string v0, "PhoneUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDragEventDelegate, DragEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDragEventDelegate, mToolBarVisibleRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mToolBarVisibleRect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mToolBarVisibleRect:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->updateView(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getDragDropListner()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    return-void
.end method

.method public OnHoverEventDelegate(Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "PhoneUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnHoverEventDelegate, mToolBarVisibleRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mToolBarVisibleRect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->getEmbeddedHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->updateView(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public OnScrollBegin(Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    float-to-int v0, v1

    const-string v1, "PhoneUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnScrollBegin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "urlBar Trany ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnScrollEnd(II)V
    .locals 3

    const-string v0, "PhoneUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnScrollEnd :visible_urlbar_height ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->getEmbeddedHeight()I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mToolBarVisibleRect:I

    return-void
.end method

.method public OnTouchEventDelegate(Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "PhoneUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnTouchEvent, MotionEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnTouchEventDelegate, mToolBarVisibleRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mToolBarVisibleRect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mToolBarVisibleRect:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->updateView(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public OnUrlBarActive()V
    .locals 4

    const/16 v3, 0x66

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->cancelHidingUrlBar()V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isUrlBarActive:Z

    const-string v0, "PhoneUi"

    const-string v1, "OnUrlBarActive"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isPageLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mStateofURL:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isOrientationChange:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mAutoHideHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isOrientationChange:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mAutoHideHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public autoHideResume()V
    .locals 3

    const/4 v1, -0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->current_orientation:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->current_orientation:I

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->prev_orientation:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->prev_orientation:I

    :cond_1
    const-string v0, "PhoneUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToolBarAutoHider : onResume() prev_orientation ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->prev_orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "current_orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->current_orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->prev_orientation:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->current_orientation:I

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isActivityPaused:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->updateView(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->cancelHidingUrlBar()V

    :cond_2
    return-void
.end method

.method public autoHideResumeSendBitmap()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->prev_orientation:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->current_orientation:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isActivityPaused:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->isTabSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "PhoneUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToolBarAutoHider : autoHideResumeSendBitmap() Send ToolBarBitmap mToolbarController.isTabSelected() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->isTabSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->handler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v0, v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->setTabSelected(Z)V

    :cond_2
    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isActivityPaused:Z

    :cond_3
    return-void
.end method

.method public cancelHidingUrlBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mAutoHideHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mAutoHideHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public changeConfiguration(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f0a0204

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mMultiTabFragment:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mMultiTabFragment:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mMultiTabFragment:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v3, p2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->setArguments(Landroid/os/Bundle;)V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mMultiTabFragment:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v3, v5, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public createNewMultiWindowTab()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->createNewMultiWindowTab()V

    return-void
.end method

.method public findOnPage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->clearFocus()V

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->findOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public getBottomToolbarLayout()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

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
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ControlContainer;

    return-object v0
.end method

.method protected getEmbeddedHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getFindTextToolbarWrapper()Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getFindTextToolbarWrapper()Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceIdOnCreation(Landroid/os/Bundle;)I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->updateTotalInstancesCounter()V

    if-nez p1, :cond_0

    const-string v1, "PhoneUi"

    const-string v2, "Bundle is null."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "savedInstanceIndex"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "PhoneUi"

    const-string v2, "Bundle is NOT null & instance id is NOT present."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setFirstIndexNeedToBeAssignedNext(Z)V

    :goto_1
    const-string v1, "PhoneUi"

    const-string v2, "Bundle is NOT null & instance id is present."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setFirstIndexNeedToBeAssignedNext(Z)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->updateTotalInstancesCounter()V

    if-eqz p1, :cond_5

    const-string v1, "savedInstanceIndex"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    const-string v1, "PhoneUi"

    const-string v2, "Bundle is NOT null & instance id is NOT present."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v0

    goto :goto_0

    :cond_4
    const-string v1, "PhoneUi"

    const-string v2, "Bundle is NOT null & instance id is present."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v1, "PhoneUi"

    const-string v2, "Bundle is null."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->IsFirstIndexNeedToBeAssignedNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setFirstIndexNeedToBeAssignedNext(Z)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v0

    goto :goto_0
.end method

.method public getPagerContainer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mTabNavigatorView:Landroid/view/View;

    return-object v0
.end method

.method public getPagerContainerVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mTabNavigatorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getPrevTabCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->prevTabCount:I

    return v0
.end method

.method public getTabSwitchAnimator()Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mTabSwitchAnimator:Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mTabSwitchAnimator:Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabViewPager()Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a010d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;

    return-object v0
.end method

.method public getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTopToolbarLayout()Landroid/view/ViewGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->getTopToolbarLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getTopToolbarLayout()Landroid/widget/LinearLayout;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a01b7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getUndoBarLayout()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mUndoViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a020a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mUndoViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mUndoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mUndoView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mUndoView:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getUtilityController()Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->getmQuickAccessUtilityController()Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    move-result-object v0

    goto :goto_0
.end method

.method public handleBackPressed()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isMultiWindowSingleActivityEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mMultiTabFragment:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->removeTabManagerFragment(Landroid/content/Context;II)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hideControlsForContextualMenuBar()V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [I

    aput v2, v0, v2

    const-string v1, "controlTopMargin"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$7;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public hideUrlBarWithDelay(I)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mAutoHideHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public inflateTabNavigatorUi()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mTabNavigatorView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0a0202

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mTabNavigatorView:Landroid/view/View;

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->inflateTabNavigatorUi()V

    return-void
.end method

.method public initializeUI(Landroid/content/Context;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->initializeUI(Landroid/content/Context;)V

    new-instance v2, Landroid/os/DVFSHelper;

    const/16 v3, 0xc

    invoke-direct {v2, p1, v3}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->supportedCPUFreqTable:[I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->supportedCPUFreqTable:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    const v5, 0xc3500

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->handleMultiwindowOnClick(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$2;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->setFontScaleFactor()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewUxQuickAccessEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Landroid/widget/FrameLayout;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    :cond_2
    return-void
.end method

.method public isFindTextToolbarShowing()Z
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isFindTextToolbarShowing()Z

    move-result v0

    return v0
.end method

.method public isPageLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickLaunchPageSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mIsQuickLaunchViewOnTop:Z

    return v0
.end method

.method public isUrlBarActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isUrlBarActive:Z

    return v0
.end method

.method public isViewPagerActive()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->getPagerContainerVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadOrClearPreviousState(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getInstanceIndex()I

    move-result v0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->restoreEncryptionKey(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->clearEncryptedState(I)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v1

    const-string v2, "no-restore-state"

    invoke-virtual {v1, v2}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->loadState(I)V

    if-ne v0, v3, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->fileReadRestorableTabCountByInstanceId(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->fileReadRestorableTabCountByInstanceId(I)V

    goto :goto_0

    :cond_3
    const-string v1, "PhoneUi"

    const-string v2, "ClearState form loadOrClearPreviousState"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->clearState(I)V

    goto :goto_0
.end method

.method public moveSbrowserToBack()V
    .locals 4

    const v3, 0x7f0a0204

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public multiWindowOnResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->checkMultiTabOnResume()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->matchParent()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0x65

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->current_orientation:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhoneUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToolBarAutoHider : onConfgurationChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isActivityPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isQuickLaunchPageSet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isPageLoading()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->updateView(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->cancelHidingUrlBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewUxQuickAccessEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    iget v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->current_orientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->onConfigurationChanged(I)V

    :cond_2
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getInstanceIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setFirstIndexNeedToBeAssignedNext(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mObserver:Ljava/util/Observer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getImeAdapterObserver()Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getImeAdapterObserver()Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->deleteObserver(Ljava/util/Observer;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewUxQuickAccessEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->onDestroy()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mUndoViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mUndoViewStub:Landroid/view/ViewStub;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mUndoView:Landroid/view/View;

    if-eqz v0, :cond_5

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mUndoView:Landroid/view/View;

    :cond_5
    return-void
.end method

.method public onMenuKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewUxQuickAccessEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isQuickLaunchPageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->onOptionItemSelected(Landroid/view/MenuItem;)V

    :cond_1
    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isMultiWindowSingleActivityEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mMultiTabFragment:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onOptionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onOptionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onPause()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isActivityPaused:Z

    const-string v0, "PhoneUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToolBarAutoHider : onPause() prev_orientation ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->prev_orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "current_orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->current_orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->current_orientation:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->prev_orientation:I

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewUxQuickAccessEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->stopGridEditmode()V

    :cond_2
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRenderProcessSwap(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isQuickLaunchPageSet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->initializeLayerPositions()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "VerificationLog"

    const-string v1, "onResume mainActphonUI - start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->setTabMangerActiveStatus(Z)V

    const-string v0, "VerificationLog"

    const-string v1, "onResume mainActphonUI - end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTabClosed(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->showMultiWindowTab()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onTabClosed(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public onTabCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->onTabCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTabSelected(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->showMultiWindowTab()V

    return-void
.end method

.method public onUrlBarBitmapUpdated()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "PhoneUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnUrlBarBitmapUpdated mStateofURL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mStateofURL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->cancelHidingUrlBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0, v3, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->setUrlBarActive(ZZ)V

    return-void
.end method

.method public processTabManagerlaunch(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->areAllTabsLoaded()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CUSTOM_TAB_LIST_ENABLED:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabListWrapper()Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->isTabsLoaded()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getTabCreateDeleteAnimation()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v5, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserTabAnimationManager()Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->disableAnimatedLayout()V

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v5, v7}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->setWindowManagerIconClicked(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v4, v5, Landroid/content/res/Configuration;->orientation:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v5, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setDeviceState(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v5, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setIsBackFromTabManager(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->unregisterMultiwindowBtnListener()V

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->supportedCPUFreqTable:[I

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    const/16 v6, 0x7d0

    invoke-virtual {v5, v6}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->setThumbnailBeforeTabMgrSwitch()V

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v5, v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->setTabMangerActiveStatus(Z)V

    sget-boolean v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-eqz v5, :cond_5

    new-instance v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-direct {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mMultiTabFragment:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "SBrowserMainActivityContextId"

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "SBrowserMainActivityInstanceIndex"

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v5

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "landscapeScrollY"

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMultiTabLandscapeScrollY()I

    move-result v5

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "portraitScrollY"

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMultiTabPortraitScrollY()I

    move-result v5

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mMultiTabFragment:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->setArguments(Landroid/os/Bundle;)V

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isMultiWindowSingleActivityEnabled:Z

    move-object v5, p1

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f0a0204

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mMultiTabFragment:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v5, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->prevTabCount:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v5, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setDeviceState(I)V

    new-instance v1, Landroid/content/Intent;

    move-object v5, p1

    check-cast v5, Landroid/app/Activity;

    const-class v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "SBrowserMainActivityContextId"

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "SBrowserMainActivityInstanceIndex"

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v5

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "landscapeScrollY"

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMultiTabLandscapeScrollY()I

    move-result v5

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "portraitScrollY"

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMultiTabPortraitScrollY()I

    move-result v5

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "scrollPos"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v5, p1

    check-cast v5, Landroid/app/Activity;

    const/16 v6, 0x1d

    invoke-virtual {v5, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v8, v8}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method

.method public registerForNotification()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->registerEnableAnimationsNotification()V

    return-void
.end method

.method public reloadTabIfNecessary()V
    .locals 2

    const-string v0, "PhoneUi"

    const-string v1, "APPLOGS: reloadTabIfNecessary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->reloadTabIfNecessary(Z)V

    return-void
.end method

.method public removeTabManagerFragment(Landroid/content/Context;II)V
    .locals 10

    const v9, 0x7f0a0204

    const v8, 0x7f0a0003

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isMultiWindowSingleActivityEnabled:Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->registerMultiwindowBtnListener()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->setWindowManagerIconClicked(Z)V

    move-object v5, p1

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    move-object v5, p1

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->closeOptionsMenu()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v6, 0x7f0a0006

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v5, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$8;

    invoke-direct {v5, p0, p1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$8;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;Landroid/content/Context;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    return-void

    :cond_1
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mMultiTabFragment:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public requestFocusToMostVisitedLayout()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->requestFocusToMostVisitedLayout()V

    return-void
.end method

.method public resetTabStateOnUserDemand()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getInstanceIndex()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->clearState(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->resetOtherInstanceRestorableTabCounter()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->fileReadRestorableTabCountByInstanceId(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->clearState(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->resetOtherInstanceRestorableTabCounter()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->fileReadRestorableTabCountByInstanceId(I)V

    goto :goto_0
.end method

.method public setActionBarVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setChromeViewHolder(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setChromeViewHolder(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    return-void
.end method

.method public setMultiTabFragmentScrollPos(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setMultiTabPortraitScrollY(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setMultiTabLandscapeScrollY(I)V

    return-void
.end method

.method public setStateofURL(I)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mStateofURL:I

    :cond_0
    return-void
.end method

.method public setUrlBarActiveFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->isUrlBarActive:Z

    return-void
.end method

.method public showActionBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    :cond_0
    return-void
.end method

.method public showControlsForContextualMenuBar(Landroid/content/Context;)V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->queryCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mTabStripHeight:F

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const-string v1, "controlTopMargin"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$5;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$6;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi$6;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public showMultiWindowTab()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f09

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sput v4, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mTabStripHeight:F

    sget v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mTabStripHeight:F

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isSmallWindowApplicable()Z

    move-result v4

    if-nez v4, :cond_0

    add-float v4, v0, v1

    float-to-int v2, v4

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isHideURLPrefEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->isIncognito()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2
.end method

.method public showQuickAccessView(Z)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "showQuickAccessView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showQuickAccessView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mIsQuickLaunchViewOnTop:Z

    if-eqz p1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isFirstLaunch:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->handleQuickAccessFirstLaunch()V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isFirstLaunch:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isFirstLaunch:Z

    if-nez v1, :cond_2

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->setQuickAccessView()V

    :cond_2
    :goto_1
    const-string v1, "VerificationLog"

    const-string v2, "showQuickLaunchView mainActPhoneUI - end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mIsQuickLaunchViewOnTop:Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->setMostVisitedUi()V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2
.end method

.method public showQuickLaunchView(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewUxQuickAccessEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->showQuickAccessView(Z)V

    :cond_1
    return-void
.end method

.method public switchTabViewPagerVisibility(Z)V
    .locals 4

    const v3, 0x7f0a0203

    const/4 v2, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mTabNavigatorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mTabNavigatorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateMultiTabOnStateChange()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isMultiWindowSingleActivityEnabled:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public updateQuickAccessModeOnNativeFail()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mIsQuickLaunchViewOnTop:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->updateQuickLaunchMode(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->showQuickAccessView(Z)V

    goto :goto_0
.end method

.method public updateQuickLaunchMode(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mIsHomeButtonPressed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mIsHomeButtonPressed:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_5

    const-string v0, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    const-string v0, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->setQuickAccessView()V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->setMostVisitedUi()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->showQuickAccessView(Z)V

    goto :goto_0
.end method

.method public updateSelectedView()V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    if-eqz v2, :cond_0

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mIsHomeButtonPressed:Z

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mIsQuickLaunchViewOnTop:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->setQuickAccessView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->setMostVisitedUi()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mBaseLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mQuickLaunchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mIsQuickLaunchViewOnTop:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isQuickAccessHomePageSet()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->setQuickAccessView()V

    goto :goto_0

    :cond_3
    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->setQuickAccessView()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->setMostVisitedUi()V

    goto :goto_0
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

.method public updateView(I)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isQuickLaunchPageSet()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PhoneUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateView setting the translation postition Y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isQuickLaunchPageSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->mControlContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_0
.end method
