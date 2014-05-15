.class public Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;
.super Ljava/lang/Object;
.source "ToolbarSwipeHandler.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabDataSetObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;,
        Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$SecurityLevel;
    }
.end annotation


# static fields
.field private static final BLANK_URL:Ljava/lang/String; = "about:blank"

.field private static final CAPTURE_AVOID_DELAY:J = 0x3e8L

.field private static final DEFAULT_VALUE:I = 0x0

.field private static final HTTPS:Ljava/lang/String; = "https://"

.field private static final MAX_CONCURRENT_THREAD:I = 0x1

.field private static final NOTIFY_DELAY:J = 0x3e8L

.field private static final NOTIFY_VIEW_PAGER:I = 0x1

.field private static final OFFSCREEN_PAGE_LIMIT:I = 0x1

.field private static final PAGE_CHANGE_COMPLETE:I = 0xa

.field private static final PAGE_MARGIN:I = 0x28

.field private static final POST_SCALE_VALUE:I = 0x1

.field private static final SCROLL_DURATION_FACTOR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ToolbarSwipeHandler"

.field private static final VALUE_ZERO:I


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

.field private mActivityController:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;

.field private mAdapter:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

.field private mAdapterTabCount:I

.field private mContext:Landroid/content/Context;

.field private mControlContainer:Lcom/sec/android/app/sbrowser/toolbar/ui/ControlContainer;

.field private mCurrentOrientation:I

.field private mHandler:Landroid/os/Handler;

.field private mHomeScreenMode:I

.field private mHomeScreenModeObserver:Landroid/database/ContentObserver;

.field private mIsActivityPaused:Z

.field private mIsQuickLaunchSelected:Z

.field private mIsRefreshPagePending:Z

.field private mIsViewPagerVisible:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mModel:Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;

.field private mPageScrollState:I

.field private mPagerContainer:Landroid/view/View;

.field private mSelectedPagePosition:I

.field private mTabInformation:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;

.field private mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

.field private mTabWasSelected:Z

.field private mUi:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;

.field private mViewPager:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsQuickLaunchSelected:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mSelectedPagePosition:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mCurrentOrientation:I

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$1;-><init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHomeScreenMode:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsViewPagerVisible:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsActivityPaused:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsRefreshPagePending:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabWasSelected:Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mPagerContainer:Landroid/view/View;

    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mPageScrollState:I

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mUi:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;

    if-nez p3, :cond_0

    iput v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mCurrentOrientation:I

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mActivityController:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mModel:Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mActivityController:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabListWrapper()Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/TabWrapperBridge;-><init>(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabInformation:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->executor:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mCurrentOrientation:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsViewPagerVisible:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mAdapter:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->isQuickLaunchPage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mModel:Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->getCroppedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->setCurrentPage(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHomeScreenMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHomeScreenMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mActivityController:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabInformation:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mAdapterTabCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mAdapterTabCount:I

    return p1
.end method

.method private addBitmapToSDcard(Landroid/graphics/Bitmap;I)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$2;-><init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;ILandroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getCroppedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mMatrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    move-object p1, v7

    return-object p1
.end method

.method private isQuickLaunchPage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "chrome://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method private onPageDrag()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mPageScrollState:I

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mPageScrollState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ToolbarSwipeHandler"

    const-string v1, "TAB_SWIPE: NOTIFY_VIEW_PAGER, was pending"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mAdapter:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->notifyDataSetChanged()V

    :cond_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->setViewPagerVisibility(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->updateCurrentPage()V

    :cond_2
    iput v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mPageScrollState:I

    goto :goto_0
.end method

.method private onScrollStateIdle()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->setViewPagerVisibility(Z)V

    return-void
.end method

.method private registerContentObserver(Landroid/database/ContentObserver;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setBottomToolbarBitmap(Landroid/view/View;)V
    .locals 3

    const v2, 0x7f0a027d

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->getBottomBarBitmap()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a027e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setContentViewBitmap(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/Tab;I)V
    .locals 5

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->isQuickLaunchPage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mModel:Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mUi:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;

    invoke-interface {v3, v4, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;->getQuickLaunchPageBitmap(Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const v3, 0x7f0a01d6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->addBitmapToSDcard(Landroid/graphics/Bitmap;I)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mModel:Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;->getBitmapFromCompositor(Lorg/chromium/content/browser/ContentView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mActivityController:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;->getContentHolderHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mControlContainer:Lcom/sec/android/app/sbrowser/toolbar/ui/ControlContainer;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/ControlContainer;->getHeight()I

    move-result v4

    sub-int v2, v3, v4

    const/4 v3, -0x1

    if-eq v3, v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v3, v2, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->getCroppedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private setCurrentPage(I)V
    .locals 0

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->setViewPagerCurrentItem()V

    :cond_0
    return-void
.end method

.method private setHomeScreenModeObserver()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$3;-><init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHomeScreenModeObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHomeScreenModeObserver:Landroid/database/ContentObserver;

    const-string v1, "easy_mode_switch"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->registerContentObserver(Landroid/database/ContentObserver;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHomeScreenModeObserver:Landroid/database/ContentObserver;

    const-string v1, "easy_mode_internet"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->registerContentObserver(Landroid/database/ContentObserver;Ljava/lang/String;)V

    return-void
.end method

.method private setTopToolbarBitmap(Landroid/view/View;)V
    .locals 3

    const v2, 0x7f0a027c

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mActivityController:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;->getToolbarBitmap()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a027b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setViewPagerCurrentItem()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabInformation:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;->getCurrentTabIndex()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mViewPager:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->getCurrentItem()I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mViewPager:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "ToolbarSwipeHandler"

    const-string v3, "TAB_SWIPE setViewPagerCurrentItem IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->notifyDataSetChanged(I)V

    goto :goto_0
.end method

.method private setViewPagerVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsViewPagerVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsViewPagerVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mUi:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;->switchTabViewPagerVisibility(Z)V

    :cond_0
    return-void
.end method

.method private unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3

    const-string v0, "ToolbarSwipeHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAB_SWIPE unregisterContentObserver observer ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateCurrentPage()V
    .locals 5

    const-string v3, "ToolbarSwipeHandler"

    const-string v4, "TAB_SWIPE: inside updateCurrentPage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ToolbarSwipeHandler"

    const-string v4, "TAB_SWIPE: Page was captured just now, dont capture again"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabInformation:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "ToolbarSwipeHandler"

    const-string v4, "TAB_SWIPE: updateCurrentPage, current tab is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mViewPager:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v3, "ToolbarSwipeHandler"

    const-string v4, "TAB_SWIPE: currentView is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->setTopToolbarBitmap(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->setBottomToolbarBitmap(Landroid/view/View;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->setContentViewBitmap(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/Tab;I)V

    goto :goto_0
.end method

.method private updatePageOnDemand(I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mViewPager:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$4;-><init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;ILandroid/view/View;)V

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public cancelViewPagerAction(Landroid/view/MotionEvent;)V
    .locals 2

    move-object v0, p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->dispatchTouchEventToPager(Landroid/view/MotionEvent;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->setViewPagerVisibility(Z)V

    return-void
.end method

.method public dispatchTouchEventToPager(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mPagerContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public forceRefreshViewPager()V
    .locals 2

    const-string v0, "ToolbarSwipeHandler"

    const-string v1, "TAB_SWIPE forceRefreshViewPager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->setViewPagerVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mAdapter:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public freeMemory()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mModel:Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;->evictBitmapFromCache()V

    return-void
.end method

.method public getBottomBarBitmap()Landroid/graphics/drawable/Drawable;
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mActivityController:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;->getBottomBarView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getCVHolderHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mActivityController:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;->getContentHolderHeight()I

    move-result v0

    return v0
.end method

.method public getInstanceIndex()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mActivityController:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;->getInstanceIndex()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mCurrentOrientation:I

    return v0
.end method

.method public getToolbarHeight()F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mControlContainer:Lcom/sec/android/app/sbrowser/toolbar/ui/ControlContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ControlContainer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public initializeSwipeUi(Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;)V
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mUi:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mUi:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;->inflateTabNavigatorUi()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mUi:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;->getPagerContainer()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mPagerContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mUi:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;->getTabViewPager()Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mViewPager:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mUi:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;->getControlContainer()Lcom/sec/android/app/sbrowser/toolbar/ui/ControlContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mControlContainer:Lcom/sec/android/app/sbrowser/toolbar/ui/ControlContainer;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mViewPager:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/PageDepthTransformer;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/PageDepthTransformer;-><init>()V

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mViewPager:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;

    const-wide/high16 v1, 0x4008

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->setScrollDurationFactor(D)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mViewPager:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->setSwipeHandler(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mControlContainer:Lcom/sec/android/app/sbrowser/toolbar/ui/ControlContainer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ControlContainer;->setSwipeHandler(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mViewPager:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mViewPager:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabInformation:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;->getTabCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mAdapterTabCount:I

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;-><init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mAdapter:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mViewPager:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mAdapter:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->setViewPagerCurrentItem()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mViewPager:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/TabViewPager;->setPageMargin(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->setTabSwipeObserver(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mActivityController:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;->getHomeScreenMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHomeScreenMode:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->setHomeScreenModeObserver()V

    return-void
.end method

.method public isFindOnPageActive()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mUi:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;->isFindTextToolbarShowing()Z

    move-result v0

    return v0
.end method

.method public isViewPagerActive()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mUi:Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;->isViewPagerActive()Z

    move-result v0

    return v0
.end method

.method public isViewPagerDragging()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mControlContainer:Lcom/sec/android/app/sbrowser/toolbar/ui/ControlContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ControlContainer;->isSwiping()Z

    move-result v0

    return v0
.end method

.method public notifyBitmapUpdated(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mModel:Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;->removeFromCache(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->updatePageOnDemand(I)V

    return-void
.end method

.method public notifyDataSetChanged(I)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "ToolbarSwipeHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAB_SWIPE notifyDataSetChanged priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsActivityPaused:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsRefreshPagePending:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public notifyTabSelected(I)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsActivityPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabWasSelected:Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsViewPagerVisible:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->notifyDataSetChanged(I)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabWasSelected:Z

    goto :goto_0
.end method

.method public onActivityPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsActivityPaused:Z

    return-void
.end method

.method public onActivityResume()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsActivityPaused:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsRefreshPagePending:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabWasSelected:Z

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsRefreshPagePending:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabWasSelected:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->notifyDataSetChanged(I)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mModel:Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;->evictBitmapFromCache()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mAdapter:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ToolbarSwipeHandler"

    const-string v1, "TAB_SWIPE onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mModel:Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;->evictBitmapFromCache()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHomeScreenModeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v0, "ToolbarSwipeHandler"

    const-string v1, "TAB_SWIPE setting default value SCROLL_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mPageScrollState:I

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->onPageDrag()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsQuickLaunchSelected:Z

    if-eqz v0, :cond_0

    const-string v0, "ToolbarSwipeHandler"

    const-string v1, "TAB_SWIPE SCROLL_STATE_IDLE setting Quick launch view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabInformation:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mSelectedPagePosition:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;->setAdapterPosition(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsQuickLaunchSelected:Z

    :cond_0
    const-string v0, "ToolbarSwipeHandler"

    const-string v1, "TAB_SWIPE SCROLL_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mPageScrollState:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->onScrollStateIdle()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    const-string v0, "ToolbarSwipeHandler"

    const-string v1, "TAB_SWIPE SCROLL_STATE_SETTLING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mPageScrollState:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsViewPagerVisible:Z

    if-nez v2, :cond_0

    const-string v2, "ToolbarSwipeHandler"

    const-string v3, "TAB_SWIPE onPageSelected pager not visible,set page & return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mAdapterTabCount:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->setCurrentPage(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabInformation:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;

    invoke-interface {v2, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;->getTabAtPosition(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->isQuickLaunchPage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mSelectedPagePosition:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsQuickLaunchSelected:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabInformation:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;

    invoke-interface {v2, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;->setAdapterPosition(I)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mIsQuickLaunchSelected:Z

    goto :goto_0
.end method
