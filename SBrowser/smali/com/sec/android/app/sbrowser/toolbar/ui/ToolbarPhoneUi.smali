.class public Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;
.super Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;
.source "ToolbarPhoneUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;
    }
.end annotation


# static fields
.field private static final AIR_VIEW_TIMER:I = 0x12c

.field private static final CONTENTVIEW_RENDERVIEW_INIT_DELAY:J = 0x1eL

.field private static final CONTENTVIEW_RENDERVIEW_INIT_ID:I = 0x1bc

.field private static final TAB_MANAGER_PREVIEVE_DELAY:I = 0x3e8


# instance fields
.field public bottomBarChildClicked:Ljava/lang/Boolean;

.field private isPopupMenuDismissed:Z

.field private mBackBtn:Landroid/widget/ImageButton;

.field private mBackwardEasymode:Landroid/widget/ImageButton;

.field private mBookmarkBtn:Landroid/widget/ImageView;

.field private mBookmarkEasymode:Landroid/widget/ImageView;

.field private mBottomBar:Landroid/view/View;

.field private mBottomBarEasymode:Landroid/view/View;

.field private mBottomBarHomeButton:Landroid/widget/ImageButton;

.field private mBottomDiv1:Landroid/widget/ImageView;

.field private mBottomDiv2:Landroid/widget/ImageView;

.field private mBottomDiv3:Landroid/widget/ImageView;

.field private mBottomDiv4:Landroid/widget/ImageView;

.field private mDivBeforeMenu:Landroid/widget/ImageView;

.field private mFirstAirViewMS:J

.field private mForwardBtn:Landroid/widget/ImageView;

.field private mForwardEasymode:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mHomeEasymode:Landroid/widget/ImageButton;

.field private mIsPreviewDisplayed:Z

.field private mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

.field private mMenuButton:Landroid/widget/ImageView;

.field private mMultiwindowBtn:Landroid/widget/ImageButton;

.field private mMultiwindowLauncher:Landroid/widget/TextView;

.field private mMultiwindowLayout:Landroid/view/View;

.field private mPh_toolbar_Search_engine:Landroid/widget/ImageView;

.field private mReaderButton:Landroid/widget/ImageView;

.field private mReaderListButton:Landroid/widget/ImageButton;

.field private mReaderListButtonClicked:Z

.field private mReadingListEasymode:Landroid/widget/ImageButton;

.field private mSbrowserContext:Landroid/content/Context;

.field private mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

.field private mTabManagerPreviewRunnable:Ljava/lang/Runnable;

.field private mToolbarMainLayout:Landroid/widget/LinearLayout;

.field private popup:Landroid/widget/PopupMenu;

.field final searchEnginesPaddingBottom:I

.field final searchEnginesPaddingLeft:I

.field final searchEnginesPaddingRight:I

.field final searchEnginesPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderListButtonClicked:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mFirstAirViewMS:J

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mIsPreviewDisplayed:Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->popup:Landroid/widget/PopupMenu;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->isPopupMenuDismissed:Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mTabManagerPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->searchEnginesPaddingTop:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->searchEnginesPaddingBottom:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->searchEnginesPaddingLeft:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->searchEnginesPaddingRight:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->bottomBarChildClicked:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->isPopupMenuDismissed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->isPopupMenuDismissed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBookmarkBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getStatusBarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMenuButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private captureBitmap()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->buildDrawingCache(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    const/16 v4, 0xc

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_2
.end method

.method private getStatusBarHeight()I
    .locals 6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private initializeEasyModeUi()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getBottomBarEasymode()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarEasymode:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarEasymode:Landroid/view/View;

    const v1, 0x7f0a00f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBackwardEasymode:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBackwardEasymode:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBackwardEasymode:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarEasymode:Landroid/view/View;

    const v1, 0x7f0a00f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mForwardEasymode:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mForwardEasymode:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mForwardEasymode:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarEasymode:Landroid/view/View;

    const v1, 0x7f0a00fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mHomeEasymode:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mHomeEasymode:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mHomeEasymode:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarEasymode:Landroid/view/View;

    const v1, 0x7f0a00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReadingListEasymode:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReadingListEasymode:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReadingListEasymode:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarEasymode:Landroid/view/View;

    const v1, 0x7f0a0100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBookmarkEasymode:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBookmarkEasymode:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBookmarkEasymode:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarEasymode:Landroid/view/View;

    const v1, 0x7f0a00f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomDiv1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarEasymode:Landroid/view/View;

    const v1, 0x7f0a00fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomDiv2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarEasymode:Landroid/view/View;

    const v1, 0x7f0a00fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomDiv3:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarEasymode:Landroid/view/View;

    const v1, 0x7f0a00ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomDiv4:Landroid/widget/ImageView;

    return-void
.end method

.method private isBackBtnView(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBackwardEasymode:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isForwardBtnView(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mForwardBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mForwardEasymode:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeTabPreview()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$7;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mTabManagerPreviewRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private setStateEdited()V
    .locals 3

    const/16 v1, 0x8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsBottomBarEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mForwardBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBookmarkBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mDivBeforeMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mPh_toolbar_Search_engine:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getHomeScreenMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private setStateHighlighted()V
    .locals 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsBottomBarEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mForwardBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBookmarkBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mDivBeforeMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mPh_toolbar_Search_engine:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getHomeScreenMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private setStateNormal()V
    .locals 8

    const/16 v7, 0x3d

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mPh_toolbar_Search_engine:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->dismissSearchEnginePopup()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mDivBeforeMenu:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getHomeScreenMode()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarEasymode:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBar:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getKeyCodeEvent()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getKeyMetaState()Z

    move-result v1

    const/16 v2, 0x16

    if-eq v0, v2, :cond_0

    if-ne v0, v7, :cond_4

    if-nez v1, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarEasymode:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBar:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isQuickLaunchPageSet()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x14

    if-eq v0, v2, :cond_5

    if-ne v0, v7, :cond_6

    :cond_5
    if-nez v1, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->requestFocusToMostVisitedLayout()V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->isFindTextToolbarShowing()Z

    move-result v2

    if-nez v2, :cond_1

    if-ne v0, v7, :cond_7

    if-nez v1, :cond_1

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->requestFocus()Z

    goto :goto_2
.end method

.method private setToolbarButtonState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMenuButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setSelectorState(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->setMultiwindowTextColor(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public captureSbrowserToolBarBitmap()Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->captureBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public createPopupMenu()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMenuButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMenuButton:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->popup:Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->popup:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$10;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0017

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->popup:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$11;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->isPopupMenuDismissed:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public createToolBarViewTreeObserver(I)V
    .locals 3

    const-string v1, "VerificationLog"

    const-string v2, "createToolBarViewTreeObserver - starts"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isQuickLaunchPageSet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const-string v1, "VerificationLog"

    const-string v2, "createToolBarViewTreeObserver - starts"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dismissPopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->popup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isQuickLaunchPageSet()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/UI;->cancelHidingUrlBar()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/UI;->isUrlBarActive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-interface {v4, v5}, Lcom/sec/android/app/sbrowser/common/UI;->hideUrlBarWithDelay(I)V

    :cond_1
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isViewPagerDragging()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->setToolbarButtonState(Z)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isQuickLaunchPageSet()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->cancelHidingUrlBar()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->isUrlBarActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/common/UI;->hideUrlBarWithDelay(I)V

    goto :goto_0
.end method

.method public enableMoreButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMenuButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public getBottomBarChildClicked()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->bottomBarChildClicked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEditTextPosition()Landroid/graphics/Rect;
    .locals 8

    const v6, 0x7f0a01b7

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v6, 0x7f0a000c

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi;

    const v6, 0x7f0a00f5

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;

    const/4 v6, 0x2

    new-array v3, v6, [I

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->getLocationOnScreen([I)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v6

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi;->getLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->getLeft()I

    move-result v7

    add-int v1, v6, v7

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput v1, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->getY()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi;->getY()F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->getHeight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->getWidth()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    return-object v5
.end method

.method public getNewBitmap()Landroid/graphics/Bitmap;
    .locals 11

    const/high16 v10, 0x4000

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->buildDrawingCache(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    return-object v3
.end method

.method public getToolbarBitmap()Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->setToolbarButtonState(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public initializeUiElements()V
    .locals 7

    const v6, 0x7f0a00f4

    const v4, 0x7f0a00f0

    const v3, 0x7f0a00ef

    const/4 v2, 0x1

    const/4 v5, 0x0

    const v0, 0x7f0a01b7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getBottomBarUi()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBar:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mForwardBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBookmarkBtn:Landroid/widget/ImageView;

    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;

    invoke-direct {v1, p0, v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsBottomBarEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mForwardBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBookmarkBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0a0279

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMenuButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMenuButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;

    invoke-direct {v1, p0, v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMenuButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMenuButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$2;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBookmarkBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBookmarkBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mForwardBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mForwardBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBackBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderListButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderListButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0a028d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mPh_toolbar_Search_engine:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mPh_toolbar_Search_engine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mPh_toolbar_Search_engine:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->searchEnginesPaddingLeft:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->searchEnginesPaddingTop:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->searchEnginesPaddingRight:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->searchEnginesPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    const v0, 0x7f0a0275

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLayout:Landroid/view/View;

    const v0, 0x7f0a0276

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    const v0, 0x7f0a028f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLauncher:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;

    invoke-direct {v1, p0, v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$3;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$4;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->initializeEasyModeUi()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setStateListener(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$StateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setReaderButton(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0a0278

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mDivBeforeMenu:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBar:Landroid/view/View;

    const v1, 0x7f0a00f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarHomeButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBackBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mForwardBtn:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBar:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBookmarkBtn:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBar:Landroid/view/View;

    const v1, 0x7f0a00f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderListButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarHomeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarHomeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0
.end method

.method public invokeQuickAcessScreen(Z)V
    .locals 0

    return-void
.end method

.method public isFingerPreviewAvailable()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_information_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v2

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public isPopupMenuDismissed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->isPopupMenuDismissed:Z

    return v0
.end method

.method public multiWindowOnClick()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLauncher:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLauncher:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->overViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isPopUpZoomer()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Lorg/chromium/content/browser/ContentViewCore;->popUpZoomerHide(Z)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getContentView()Lorg/chromium/content/browser/ContentView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    if-ne v3, p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->setMultiwindowTextColor(Landroid/view/View;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMenuButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLauncher:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v1, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Web_RemovePartialViewDuringHorizontalScroll"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    const v6, 0x7f0d0019

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c02e7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c02ee

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c003d

    new-instance v5, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$5;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setPressed(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->setMultiwindowTextColor(Landroid/view/View;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->multiWindowOnClick()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->isBackBtnView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getBottomBarChildClicked()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->clearFocus()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->navigateBack()Z

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->isForwardBtnView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getBottomBarChildClicked()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->clearFocus()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->navigateForward()Z

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBookmarkBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBookmarkEasymode:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getBottomBarChildClicked()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->setBottomBarChildClicked(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->launchBookmarkActivity()V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mPh_toolbar_Search_engine:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mPh_toolbar_Search_engine:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    const v4, 0x7f0a028d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->displaySearchEnginePopup(Landroid/view/View;)V

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarHomeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mHomeEasymode:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getBottomBarChildClicked()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->clearFocus()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->loadHomePage()V

    goto/16 :goto_1

    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderListButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReadingListEasymode:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderListButtonClicked:Z

    if-nez v3, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getBottomBarChildClicked()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->setBottomBarChildClicked(Z)V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderListButtonClicked:Z

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "SBrowserMainActivityContextId"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/16 v4, 0x22

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMenuButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->openOptionsMenu()V

    goto/16 :goto_1
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->onFinishInflate()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->setUiType(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->removeTabPreview()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$6;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)V

    const/16 v1, 0x1bc

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$6;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->isFingerPreviewAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mTabManagerPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mFirstAirViewMS:J

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mTabManagerPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mTabManagerPreviewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mIsPreviewDisplayed:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mIsPreviewDisplayed:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mFirstAirViewMS:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mIsPreviewDisplayed:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->DisplayTabPreview()V

    goto :goto_0
.end method

.method public onOrientationChange(I)V
    .locals 0

    return-void
.end method

.method public onStateChanged(I)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getImeAdapterObserver()Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->resetSoftKeyBoardVisibleFlag()V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->setStateNormal()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isPopUpZoomer()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->popUpZoomerHide(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->setStateHighlighted()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->setStateEdited()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onUrlFocusChange(Z)V
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi;

    if-nez p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->updateCurrentTabDisplayStatus(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getHomeScreenMode()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mPh_toolbar_Search_engine:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mDivBeforeMenu:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method public registerMultiwindowBtnListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBookmarkBtnClickable()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBookmarkBtn:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$9;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setBottomBarChildClicked(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->bottomBarChildClicked:Ljava/lang/Boolean;

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarHomeButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBottomBarHomeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBackBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mForwardBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mForwardBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_2
    return-void
.end method

.method protected setMultiwindowTextColor(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLauncher:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLauncher:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0
.end method

.method protected setMultiwindowTextColorMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 7

    const v6, 0x7f080058

    const v5, 0x7f080057

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLauncher:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public setReaderListButtonClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderListButtonClicked:Z

    return-void
.end method

.method public setSearchEngineFavIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mPh_toolbar_Search_engine:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setToolBarBackground(Z)V
    .locals 7

    const v6, 0x7f0201e5

    const v5, 0x7f0201db

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderButton:Landroid/widget/ImageView;

    const v1, 0x7f02016a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mPh_toolbar_Search_engine:Landroid/widget/ImageView;

    const v1, 0x7f0201e4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mPh_toolbar_Search_engine:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->searchEnginesPaddingLeft:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->searchEnginesPaddingTop:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->searchEnginesPaddingRight:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->searchEnginesPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLauncher:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020155

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mDivBeforeMenu:Landroid/widget/ImageView;

    const v1, 0x7f020180

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMenuButton:Landroid/widget/ImageView;

    const v1, 0x7f020136

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMenuButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderButton:Landroid/widget/ImageView;

    const v1, 0x7f020169

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mReaderButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mPh_toolbar_Search_engine:Landroid/widget/ImageView;

    const v1, 0x7f0201e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mPh_toolbar_Search_engine:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->searchEnginesPaddingLeft:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->searchEnginesPaddingTop:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->searchEnginesPaddingRight:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->searchEnginesPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLauncher:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020156

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mDivBeforeMenu:Landroid/widget/ImageView;

    const v1, 0x7f02017f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMenuButton:Landroid/widget/ImageView;

    const v1, 0x7f0201e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMenuButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f020181

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setToolBarMainLayoutVisiblity()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setUrlBarStateToNormal()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->setStateNormal()V

    return-void
.end method

.method public showPopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->popup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->isPopupMenuDismissed:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    :cond_0
    return-void
.end method

.method public startCapturingToolBarBitmap(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isQuickLaunchPageSet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->updateView(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1, v3, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->setUrlBarActive(ZZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->isEditingUrl()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->setToolBitmapCaptured(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->captureBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->setUrlBarBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->setToolBitmapCaptured(Z)V

    goto :goto_0
.end method

.method public unregisterMultiwindowBtnListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateBackButtonVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mBackwardEasymode:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public updateForwardButtonVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mForwardBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mForwardEasymode:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public updateOnCloseAllTabsVisual()V
    .locals 0

    return-void
.end method

.method public updateTabCountDisplay(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLayout:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLauncher:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateToolbarButtons(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMultiwindowLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
