.class Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;
.super Ljava/lang/Object;
.source "ContentViewListAdapter.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;
.implements Lorg/samsung/chrome/browser/SbrTabModel$SbrTabModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChromeTabModel"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private IS_ERROR_DIALOG_SHOWING:Z

.field private mAssociateAppId:Ljava/lang/String;

.field private mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field private mIndex:I

.field private mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;

.field private mIsIncognito:Z

.field private mMultiWindowRestored:Z

.field private mNativeChromeTabModel:I
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mRestoreTabCount:I

.field mSbrTabModel:Lorg/samsung/chrome/browser/SbrTabModel;

.field private final mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/common/Tab;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mNativeChromeTabModel:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mRestoreTabCount:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mMultiWindowRestored:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->IS_ERROR_DIALOG_SHOWING:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    new-instance v0, Lorg/samsung/chrome/browser/SbrTabModel;

    invoke-direct {v0}, Lorg/samsung/chrome/browser/SbrTabModel;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mSbrTabModel:Lorg/samsung/chrome/browser/SbrTabModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mSbrTabModel:Lorg/samsung/chrome/browser/SbrTabModel;

    invoke-virtual {v0, p0}, Lorg/samsung/chrome/browser/SbrTabModel;->setSbrTabModelListener(Lorg/samsung/chrome/browser/SbrTabModel$SbrTabModelListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$1;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mClearBrowsingDataActivityStarter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ClearBrowsingDataActivityStarter;
    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$002(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ClearBrowsingDataActivityStarter;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ClearBrowsingDataActivityStarter;

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->createCachedNtp()V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->clearCachedNtp()V

    return-void
.end method

.method static synthetic access$3902(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->IS_ERROR_DIALOG_SHOWING:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;I)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabOrCachedNtpById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->onNtpResourcesLoaded(Lcom/sec/android/app/sbrowser/common/Tab;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->createDelayedCacheNtp(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)Lcom/sec/android/app/sbrowser/common/InstantTab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->clearCachedNtpAndThumbnails()V

    return-void
.end method

.method private addTab(ILcom/sec/android/app/sbrowser/common/Tab;)I
    .locals 3

    sget-boolean v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    if-gez p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    if-eq v1, p0, :cond_2

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    :cond_2
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->indexOf(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyDataSetChanged()V

    return v0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    if-gt p1, v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    goto :goto_0
.end method

.method private cacheTabBitmap(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    return-void
.end method

.method private clearCachedNtp()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mPreloadWebViewContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$3100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mPreloadWebViewContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$3100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$102(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->destroy()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;

    goto :goto_0
.end method

.method private clearCachedNtpAndThumbnails()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->clearCachedNtp()V

    return-void
.end method

.method private createCachedNtp()V
    .locals 10

    const/4 v8, -0x1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->sAllowCreateCachedNtp:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mPreloadWebViewContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$3100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v9, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$3;

    invoke-direct {v9, p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$3;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)V

    new-instance v5, Lorg/chromium/ui/WindowAndroid;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/chromium/ui/WindowAndroid;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getNewId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v4

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    sget-object v7, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_OVERVIEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/common/Tab;-><init>(ILcom/sec/android/app/sbrowser/common/Tab$TabHost;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;Lorg/chromium/ui/WindowAndroid;ZLcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;

    const-string v1, "chrome://newtab/#cached_ntp"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/chromium/content/browser/ContentView;->setBackgroundColor(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private createDelayedCacheNtp(I)V
    .locals 4

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->sAllowCreateCachedNtp:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chrome://newtab/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$4;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNtpCacheCreateDelayMs:J
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$3400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const-wide/16 v1, 0x12c

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNtpCacheCreateDelayMs:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$3402(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;J)J

    goto :goto_0
.end method

.method private createTabIfSurfaceReady(ILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;I)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 9

    new-instance v5, Lorg/chromium/ui/WindowAndroid;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/chromium/ui/WindowAndroid;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v4

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move v1, p1

    move-object v2, p0

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/common/Tab;-><init>(ILcom/sec/android/app/sbrowser/common/Tab$TabHost;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;Lorg/chromium/ui/WindowAndroid;ZLcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;I)V

    return-object v0
.end method

.method private getNewId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$208(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)I

    move-result v0

    return v0
.end method

.method private getTabId(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "chrome://tabspreview/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getNewId()I

    move-result v0

    :cond_0
    return v0
.end method

.method private getTabOrCachedNtpById(I)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_0
    return-object v0
.end method

.method private isExceedsThreshold()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getGlobalTabCounter()I

    move-result v0

    const/16 v3, 0x32

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    if-ge v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private onNtpResourcesLoaded(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$5;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$5;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;I)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private onPostTabCreate(Lcom/sec/android/app/sbrowser/common/Tab;ILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;ZLjava/lang/String;IIZZ)V
    .locals 14

    const-string v2, "ContentViewListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APPLOGS:Tab created tab ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setToolBarMainLayoutVisiblity()V

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->setParentIsIncognito()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mOrderController:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;

    move-result-object v2

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->determineInsertionIndex(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;ILcom/sec/android/app/sbrowser/common/Tab;)I

    move-result p2

    move/from16 v0, p2

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->addTab(ILcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v12

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_RESTORE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "TabListWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostTabCreate with launch type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->addNewTab(IZ)V

    :cond_1
    if-eqz p8, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->selectControl(Z)V

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_NEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    invoke-direct {p0, v12, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->setIndex(ILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V

    :cond_2
    move-object/from16 v0, p5

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->validateURL(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Ljava/lang/String;

    move-result-object p5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getTabCreateDeleteAnimation()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p5, :cond_4

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_RESTORE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_4

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getParentId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->IsTabManagerActive()Z

    move-result v11

    :cond_3
    if-nez v11, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserTabAnimationManager()Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->tabCreateDeleteAnimation(Z)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->doRegisterAirTurnListener()V

    if-eqz p9, :cond_5

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTransitionType(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)I
    invoke-static/range {p3 .. p3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$3700(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)I

    move-result v2

    sget v3, Lorg/chromium/content/browser/LoadUrlParams;->UA_OVERRIDE_TRUE:I

    move-object/from16 v0, p5

    invoke-virtual {p1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;II)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p5

    move-object/from16 v6, p3

    move/from16 v10, p8

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabCreated(IILjava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZZ)V
    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$3000(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IILjava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZZ)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsFromExternalApp:Z

    return-void

    :cond_5
    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTransitionType(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)I
    invoke-static/range {p3 .. p3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$3700(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)I

    move-result v2

    move-object/from16 v0, p5

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private reloadPreviousTabIfNeeded(ZI)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->needsReload()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->reload()V

    goto :goto_0
.end method

.method private setIndex(ILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    if-eq v4, p0, :cond_1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    :cond_1
    :goto_1
    iget v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    if-ne v4, p1, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    if-ne v4, p0, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->isSurfaceReady()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "ContentViewListAdapter"

    const-string v4, "APPLOGS:Setindex, ContentView is NULL, waiting"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p2, v1, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->postSetIndexOnWait(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;IZ)V

    :goto_2
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    const-string v3, "ContentViewListAdapter"

    const-string v4, "APPLOGS:Calling onSetIndex normally, index not changed"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p2, v1, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->onSetIndex(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;IZ)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->begin()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    if-eq v4, p0, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->selectControl(Z)V

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_7

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->isSurfaceReady()Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    if-nez v3, :cond_8

    const-string v3, "ContentViewListAdapter"

    const-string v4, "APPLOGS:Setindex2, ContentView is NULL, waiting"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p2, v1, v7}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->postSetIndexOnWait(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;IZ)V

    :goto_4
    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v6, v3}, Lcom/sec/android/app/sbrowser/utilities/MathUtils;->clamp(III)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    goto :goto_3

    :cond_8
    const-string v3, "ContentViewListAdapter"

    const-string v4, "APPLOGS:Calling onSetIndex2 normally, index changed"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p2, v1, v7}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->onSetIndex(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;IZ)V

    goto :goto_4
.end method

.method private showErrorDialog()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->IS_ERROR_DIALOG_SHOWING:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c00e4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c00e7

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003d

    new-instance v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$7;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const v0, 0x7f0c00e2

    goto :goto_0

    :cond_1
    const v0, 0x7f0c00e3

    goto :goto_1
.end method

.method private showTab(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V
    .locals 3

    const-string v0, "ContentViewListAdapter"

    const-string v1, "APPLOGS:Inside showTab"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isSavedAndViewDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_CLOSE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    if-eq p2, v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getLaunchType()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_NEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    if-eq p2, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->cacheTabBitmap(Lcom/sec/android/app/sbrowser/common/Tab;)V

    :cond_3
    const-string v0, "ContentViewListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS:HIDING TAB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabSaver:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->addTabToSaveQueue(Lcom/sec/android/app/sbrowser/common/Tab;I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$102(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->isSurfaceReady()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ContentViewListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS:SHOWING TAB ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->show(Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->showTabIfSurfaceReady()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2300(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    goto/16 :goto_0
.end method

.method private validateURL(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_MENU:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_INSTANT:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_OVERVIEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    if-ne p2, v1, :cond_4

    :cond_0
    if-eqz v0, :cond_4

    const-string v1, "chrome://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "chrome://newtab/#incognito"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, "about:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "about:blank"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move-object p1, v0

    :cond_4
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/utilities/URLUtilities;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public ActivateTabFromExtension(I)V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabIndexById(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->setIndex(I)V

    :cond_0
    return-void
.end method

.method public CloseAllTabsBackground(Z)Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public CloseTabBackground(ZI)Z
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->closeTabByIndex(I)V

    const/4 v1, 0x1

    return v1
.end method

.method public CreateTabFromExtension(IILjava/lang/String;ZIZ)Lcom/sec/android/app/sbrowser/common/ExtTabInfo;
    .locals 10
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v5

    :cond_0
    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object v0, p0

    move-object v1, p3

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZ)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v9

    if-eqz v9, :cond_2

    new-instance v7, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;

    invoke-direct {v7}, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;-><init>()V

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v0

    iput v0, v7, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->id:I

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/Tab;->getOpenerId()I

    move-result v0

    iput v0, v7, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->opernerTabId:I

    iget v0, v7, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabIndexById(I)I

    move-result v0

    iput v0, v7, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->index:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->index()I

    move-result v6

    iget v0, v7, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->index:I

    if-ne v6, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->active:Z

    :cond_1
    :goto_0
    return-object v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public HighlightTabFromExtension(IZ)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    return-void
.end method

.method public MoveTabFromExtension(II)Lcom/sec/android/app/sbrowser/common/ExtTabInfo;
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->moveTab(II)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;-><init>()V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    iput v3, v1, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->id:I

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getOpenerId()I

    move-result v3

    iput v3, v1, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->opernerTabId:I

    iget v3, v1, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabIndexById(I)I

    move-result v3

    iput v3, v1, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->index:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->index()I

    move-result v0

    iget v3, v1, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->index:I

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->active:Z

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public OpenNewTab(ZLjava/lang/String;)Z
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->setMultiWindowMode(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-interface {v1, p2, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v2, 0x1

    return v2
.end method

.method public PinTabFromExtension(IZ)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    return-void
.end method

.method public areAllTabsLoaded()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mAllTabsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$3600(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public closeAllTabs()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabSaver:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->cancelLoadingTabs(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsCloseAllTabs:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1102(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->closeTabByIndex(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsCloseAllTabs:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1102(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z

    const-string v0, "ContentViewListAdapter"

    const-string v1, "APPLOGS: All tabs closed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$102(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->closeAllTabsForMultiInstance()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->updatePlaceHolderBitmap(I)V

    :cond_2
    return-void
.end method

.method public closeTab(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->closeTab(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->updatePlaceHolderBitmap(I)V

    :cond_0
    return-void
.end method

.method public closeTab(Lcom/sec/android/app/sbrowser/common/Tab;Z)V
    .locals 20

    if-nez p1, :cond_0

    sget-boolean v18, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->$assertionsDisabled:Z

    if-nez v18, :cond_d

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v4

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->indexOf(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v5

    if-nez v5, :cond_e

    const/16 v18, 0x1

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getNextTabIfClosed(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->blockingNotifyTabClosing(IZ)V
    invoke-static {v0, v4, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$700(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->deleteTab(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabSaver:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v18

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->removeTabFromQueues(Lcom/sec/android/app/sbrowser/common/Tab;I)V

    if-nez v13, :cond_f

    const/4 v12, 0x0

    :goto_1
    if-nez v13, :cond_10

    const/4 v14, -0x1

    :goto_2
    if-nez v13, :cond_11

    const/4 v15, -0x1

    :goto_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getTabCreateDeleteAnimation()Z

    move-result v18

    if-eqz v18, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v18

    if-eqz v18, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->IsTabManagerActive()Z

    move-result v10

    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserTabAnimationManager()Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->getCurrentTabBitmap(Lcom/sec/android/app/sbrowser/common/Tab;)V

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getLaunchType()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-result-object v18

    sget-object v19, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_2

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getLaunchType()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-result-object v18

    sget-object v19, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS_OTHERS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_2

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getLaunchType()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-result-object v18

    sget-object v19, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_RESTORE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getParentId()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getBackKeyPlaceHolder()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v18

    if-eqz v18, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsBackKeyWhitePlaceHolder()Z

    move-result v18

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserTabAnimationManager()Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->tabCreateDeleteAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->showPlaceHolderFromTab()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v18

    const/16 v19, 0xa

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setProgressForPlaceHolder(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_3
    :goto_4
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getBackKeyPlaceHolder()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getIsNewTabLaunchedFromJS()Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isSMultiWindow()Z

    move-result v18

    if-nez v18, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v18

    if-eqz v18, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsBackKeyWhitePlaceHolder()Z

    move-result v18

    if-eqz v18, :cond_13

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getTabCreateDeleteAnimation()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserTabAnimationManager()Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->tabCreateDeleteAnimation(Z)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->showPlaceHolderFromTab()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v18

    const/16 v19, 0xa

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setProgressForPlaceHolder(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7

    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabClosed(IZIZ)V
    invoke-static {v0, v4, v1, v14, v12}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1000(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IZIZ)V

    if-eq v13, v6, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v12, v0, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->indexOf(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->reloadPreviousTabIfNeeded(ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsCloseAllTabs:Z
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Z

    move-result v18

    if-nez v18, :cond_7

    sget-object v18, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_CLOSE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    move-object/from16 v0, v18

    invoke-direct {v11, v15, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->setIndex(ILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V

    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/Tab;->createHistoricalTab()V

    :cond_8
    const/high16 v16, -0x8000

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/Tab;->isSavedAndViewDestroyed()Z

    move-result v18

    if-nez v18, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPid()I

    move-result v16

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static/range {v18 .. v19}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$102(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/Tab;->destroy()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->deleteState(Landroid/app/Activity;I)V

    const/16 p1, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getGlobalIncognitoTabCounter()I

    move-result v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    if-nez v8, :cond_b

    invoke-static {}, Lorg/chromium/content/browser/ContentViewCore;->destroyIncognitoProfile()V

    :cond_b
    const/high16 v18, -0x8000

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/Tab;->isSavedAndViewDestroyed()Z

    move-result v18

    if-nez v18, :cond_c

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPid()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/Tab;->purgeRenderProcessNativeMemory()V

    :cond_d
    return-void

    :cond_e
    add-int/lit8 v18, v5, -0x1

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v12

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v14

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v15

    goto/16 :goto_3

    :cond_12
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->showPlaceHolderFromTab(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_4

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_4

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_4

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_4

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_4

    :cond_13
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->showPlaceHolderFromTab(I)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_5

    :catch_4
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_5

    :catch_5
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_5

    :catch_6
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_5

    :catch_7
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    goto/16 :goto_6
.end method

.method public closeTabByIndex(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->closeTab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    :cond_0
    return-void
.end method

.method public closeTabFromTab(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "ContentViewListAdapter"

    const-string v3, "closeTabFromTab"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v2, v4, :cond_2

    const-string v2, "ContentViewListAdapter"

    const-string v3, "Closing last available tab and moving task to background"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->IsPaused()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->moveTaskToBack(Z)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v2, "ContentViewListAdapter"

    const-string v3, "Error while loading homepageURL in closeTabFromTab... this should not happen :("

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getTabCreateDeleteAnimation()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserTabAnimationManager()Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->disableAnimatedLayout()V

    :cond_3
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->closeTab(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    goto :goto_1
.end method

.method public closeTabReleasingContents(Lcom/sec/android/app/sbrowser/common/Tab;Z)I
    .locals 13

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v9, -0x1

    if-nez p1, :cond_0

    sget-boolean v10, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->$assertionsDisabled:Z

    if-nez v10, :cond_6

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->indexOf(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v2

    if-nez v2, :cond_7

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {p0, v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getNextTabIfClosed(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->blockingNotifyTabClosing(IZ)V
    invoke-static {v10, v1, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$700(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IZ)V

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v10

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->deleteTab(I)V

    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabSaver:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    move-result-object v11

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v10

    invoke-virtual {v11, p1, v10}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->removeTabFromQueues(Lcom/sec/android/app/sbrowser/common/Tab;I)V

    if-nez v7, :cond_8

    move v6, v4

    :goto_1
    if-nez v7, :cond_9

    move v8, v9

    :goto_2
    if-nez v7, :cond_a

    :goto_3
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabClosed(IZIZ)V
    invoke-static {v10, v1, v11, v8, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1000(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IZIZ)V

    if-eqz v3, :cond_b

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-boolean v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    if-eq v6, v10, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->indexOf(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v10

    iput v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    :cond_2
    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->reloadPreviousTabIfNeeded(ZI)V

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v10, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    sget-object v10, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_CLOSE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    invoke-direct {v5, v9, v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->setIndex(ILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V

    :goto_4
    iget-boolean v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    if-nez v10, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->createHistoricalTab()V

    :cond_3
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v10, v12}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$102(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_4
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToNotify:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToNotify:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v10, v12}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1402(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab;

    const-string v10, "ContentViewListAdapter"

    const-string v11, "closeTabReleasingContents: clear mTabToNotify!!"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->destroyAndReleaseContents()I

    move-result v4

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v11

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v10

    invoke-virtual {p1, v11, v10}, Lcom/sec/android/app/sbrowser/common/Tab;->deleteState(Landroid/app/Activity;I)V

    const/4 p1, 0x0

    :cond_6
    return v4

    :cond_7
    add-int/lit8 v10, v2, -0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v6

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v8

    goto/16 :goto_2

    :cond_a
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v10, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v10

    invoke-interface {v10, v8}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v9

    goto/16 :goto_3

    :cond_b
    iput v9, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    goto :goto_4
.end method

.method public commitPrefetchUrl(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/InstantTab;->getPrefetchedUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/InstantTab;->getPrefetchedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/InstantTab;->commitPrefetch()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->endPrefetch()V

    return v0
.end method

.method public createDragAndDropTab(II)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 28

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getThumbnailCaptureOptimizationFlagStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->thumbnailHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v27, :cond_0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/sbrowser/common/Tab;->IsthumbnailAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/sbrowser/common/Tab;->isIspageloadfinished()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ContentViewListAdapter"

    const-string v6, "createDragAndDropTab bitmap capture...!!"

    invoke-static {v2, v6}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->caputreSoftBitmapFor(I)V

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabIndexById(I)I

    move-result v24

    if-ltz v24, :cond_1

    add-int/lit8 v24, v24, 0x1

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v6, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsTabCreationInProcess:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2602(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->isIncognito()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v2

    const/16 v6, 0x32

    if-ge v2, v6, :cond_6

    sget-object v5, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_RESTORE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    if-eq v5, v2, :cond_5

    const/4 v7, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTabId()I
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2700(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)I

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getNewId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabCreating(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;ZZ)V
    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;ZZ)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getSingleTapX()I

    move-result v19

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getSingleTapY()I

    move-result v20

    :cond_2
    new-instance v13, Lorg/chromium/ui/WindowAndroid;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v13, v2}, Lorg/chromium/ui/WindowAndroid;-><init>(Landroid/app/Activity;)V

    new-instance v8, Lcom/sec/android/app/sbrowser/common/Tab;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move v9, v3

    move-object/from16 v10, p0

    move/from16 v14, p1

    move-object/from16 v16, v5

    move/from16 v17, p2

    invoke-direct/range {v8 .. v17}, Lcom/sec/android/app/sbrowser/common/Tab;-><init>(ILcom/sec/android/app/sbrowser/common/Tab$TabHost;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;Lorg/chromium/ui/WindowAndroid;IZLcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;I)V

    const-string v2, "ContentViewListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " createDragAndDropTab new tab = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setTabDragAndDropIsInProgress(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mOrderController:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v5, v0, v8}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->determineInsertionIndex(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;ILcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->addTab(ILcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v2

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v6

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v9

    invoke-virtual {v2, v6, v9}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->addNewTab(IZ)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v15

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move/from16 v21, v0

    move/from16 v16, v4

    move-object/from16 v18, v5

    move/from16 v22, v7

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabCreated(IILjava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZZ)V
    invoke-static/range {v14 .. v22}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$3000(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IILjava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZZ)V

    if-eqz v7, :cond_4

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_NEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->setIndex(ILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsTabCreationInProcess:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2602(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z

    move-object/from16 v26, v8

    :goto_1
    return-object v26

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsTabCreationInProcess:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2602(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z

    move-object/from16 v26, v8

    goto :goto_1
.end method

.method public createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    return-object v0
.end method

.method public createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;I)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 8

    const/4 v4, -0x1

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    if-eqz v6, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v4

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabIndexById(I)I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_1

    add-int/lit8 p3, v7, 0x1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZ)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    return-object v0
.end method

.method public createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZ)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getThumbnailCaptureOptimizationFlagStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->thumbnailHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->IsthumbnailAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->isIspageloadfinished()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->caputreSoftBitmapFor(I)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->setIspageloadfinished(Z)V

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->setIsnewwindowcreating(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsTabCreationInProcess:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2602(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "ContentViewListAdapter"

    const-string v2, "APPLOGS: createNewTab mSbrContentViewRenderView is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    :goto_0
    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->isSurfaceReady()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->preTabCreation(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZ)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, "ContentViewListAdapter"

    const-string v2, "APPLOGS: createNewTab() CREATE TAB REQUEST- Surface is not ready, doWait()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->tabCreationWaiting:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2002(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z

    new-instance v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;

    move-object v1, p0

    move v2, p5

    move v3, p3

    move v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;ZIILjava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mExecutorThread:Lcom/sec/android/app/sbrowser/common/ExecutorThread;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/ExecutorThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/ExecutorThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    move-object v1, v8

    goto :goto_0
.end method

.method public createTabFromNative(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createTabWithNativeContents(IILjava/lang/String;)Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_1
    return-void
.end method

.method public createTabWithNativeContents(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IILjava/lang/String;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 27

    const-string v2, "ContentViewListAdapter"

    const-string v3, "APPLOGS:createTabWithNativeContents 2"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getThumbnailCaptureOptimizationFlagStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->thumbnailHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v26, :cond_0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/sbrowser/common/Tab;->IsthumbnailAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/sbrowser/common/Tab;->isIspageloadfinished()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "newwindow"

    const-string v3, "on createTabWithNativeContents contentviewlistadapter"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->caputreSoftBitmapFor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->setIspageloadfinished(Z)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->setIsnewwindowcreating(Z)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsTabCreationInProcess:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2602(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getGlobalTabCounter()I

    move-result v2

    const/16 v3, 0x32

    if-ge v2, v3, :cond_9

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_RESTORE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_8

    const/4 v7, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTabId()I
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2700(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move/from16 v3, p1

    move-object/from16 v5, p3

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabCreating(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;ZZ)V
    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;ZZ)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getSingleTapX()I

    move-result v19

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getSingleTapY()I

    move-result v20

    :cond_2
    new-instance v13, Lorg/chromium/ui/WindowAndroid;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v13, v2}, Lorg/chromium/ui/WindowAndroid;-><init>(Landroid/app/Activity;)V

    new-instance v8, Lcom/sec/android/app/sbrowser/common/Tab;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move/from16 v9, p1

    move-object/from16 v10, p0

    move/from16 v14, p2

    move-object/from16 v16, p3

    move/from16 v17, p5

    invoke-direct/range {v8 .. v17}, Lcom/sec/android/app/sbrowser/common/Tab;-><init>(ILcom/sec/android/app/sbrowser/common/Tab$TabHost;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;Lorg/chromium/ui/WindowAndroid;IZLcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;I)V

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->associateWithApp(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mOrderController:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;

    move-result-object v2

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1, v8}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->determineInsertionIndex(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;ILcom/sec/android/app/sbrowser/common/Tab;)I

    move-result p4

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->addTab(ILcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v25

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_RESTORE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v2

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->addNewTab(IZ)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v15

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move/from16 v21, v0

    move/from16 v16, v4

    move-object/from16 v18, p3

    move/from16 v22, v7

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabCreated(IILjava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZZ)V
    invoke-static/range {v14 .. v22}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$3000(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IILjava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZZ)V

    if-eqz v7, :cond_5

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_NEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->setIndex(ILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getTabCreateDeleteAnimation()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_RESTORE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_7

    const/16 v24, 0x0

    if-eqz v23, :cond_6

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->IsTabManagerActive()Z

    move-result v24

    :cond_6
    if-nez v24, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserTabAnimationManager()Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->tabCreateDeleteAnimation(Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->doRegisterAirTurnListener()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsTabCreationInProcess:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2602(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z

    :goto_1
    return-object v8

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMaxTabLimitReached()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsTabCreationInProcess:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2602(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z

    const/4 v8, 0x0

    goto :goto_1
.end method

.method public createTabWithNativeContents(IILjava/lang/String;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 7

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabIndexById(I)I

    move-result v4

    if-ltz v4, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getNewId()I

    move-result v1

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object v0, p0

    move v2, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->createTabWithNativeContents(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IILjava/lang/String;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    return-object v0
.end method

.method public createTabWithNativeContents(I)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    const-string v1, "ContentViewListAdapter"

    const-string v2, "APPLOGS:createTabWithNativeContents"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createTabWithNativeContents(IILjava/lang/String;)Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_1
    return-void
.end method

.method public deferredCloseTab(Lcom/sec/android/app/sbrowser/common/Tab;Z)V
    .locals 19

    if-nez p1, :cond_0

    sget-boolean v17, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->$assertionsDisabled:Z

    if-nez v17, :cond_b

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToClose:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1202(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v4

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->indexOf(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v5

    if-nez v5, :cond_c

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getNextTabIfClosed(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/Tab;->isAssociatedToolBarStateDisplayed()Z

    move-result v18

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mNextTabToolBarDisplayStateShown:Z
    invoke-static/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1302(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    check-cast v17, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUtilityCheckForHideUrl()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/UI;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v16

    if-eqz v16, :cond_2

    const-string v17, "ContentViewListAdapter"

    const-string v18, "HIDEURL - ShowToolBarManually during setIndex Success"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isTabSwitchUsingAirBrowseGesture()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->ShowToolBarManually()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->blockingNotifyTabClosing(IZ)V
    invoke-static {v0, v4, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$700(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabListWrapper:Lcom/sec/android/app/sbrowser/common/TabListWrapper;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->deleteTab(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabSaver:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v17

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->removeTabFromQueues(Lcom/sec/android/app/sbrowser/common/Tab;I)V

    if-nez v12, :cond_d

    const/4 v11, 0x0

    :goto_1
    if-nez v12, :cond_e

    const/4 v13, -0x1

    :goto_2
    if-nez v12, :cond_f

    const/4 v14, -0x1

    :goto_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getTabCreateDeleteAnimation()Z

    move-result v17

    if-eqz v17, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v17

    if-eqz v17, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->IsTabManagerActive()Z

    move-result v8

    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserTabAnimationManager()Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->getCurrentTabBitmap(Lcom/sec/android/app/sbrowser/common/Tab;)V

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getLaunchType()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-result-object v17

    sget-object v18, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getLaunchType()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-result-object v17

    sget-object v18, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS_OTHERS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getLaunchType()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-result-object v17

    sget-object v18, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_RESTORE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getParentId()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    :cond_4
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getBackKeyPlaceHolder()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v17

    if-eqz v17, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsBackKeyWhitePlaceHolder()Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserTabAnimationManager()Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->tabCreateDeleteAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->showPlaceHolderFromTab()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setProgressForPlaceHolder(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_5
    :goto_4
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getBackKeyPlaceHolder()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getIsNewTabLaunchedFromJS()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isSMultiWindow()Z

    move-result v17

    if-nez v17, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v17

    if-eqz v17, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsBackKeyWhitePlaceHolder()Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getTabCreateDeleteAnimation()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserTabAnimationManager()Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->tabCreateDeleteAnimation(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->showPlaceHolderFromTab()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setProgressForPlaceHolder(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7

    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabClosed(IZIZ)V
    invoke-static {v0, v4, v1, v13, v11}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1000(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IZIZ)V

    if-eq v12, v6, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v11, v0, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->indexOf(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->reloadPreviousTabIfNeeded(ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsCloseAllTabs:Z
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Z

    move-result v17

    if-nez v17, :cond_9

    sget-object v17, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_CLOSE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    move-object/from16 v0, v17

    invoke-direct {v10, v14, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->setIndex(ILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V

    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToClose:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/Tab;->createHistoricalTab()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToClose:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/Tab;->getSbrTabBridge()Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v15

    if-eqz v15, :cond_b

    invoke-virtual {v15}, Lorg/samsung/chrome/browser/SbrTabBridge;->flushPendingMessages()V

    :cond_b
    return-void

    :cond_c
    add-int/lit8 v17, v5, -0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v11

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v13

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v14

    goto/16 :goto_3

    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->showPlaceHolderFromTab(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_4

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_4

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_4

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_4

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_4

    :cond_11
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->showPlaceHolderFromTab(I)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_5

    :catch_4
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_5

    :catch_5
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_5

    :catch_6
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_5

    :catch_7
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    goto/16 :goto_6
.end method

.method public destroy()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->destroy()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ContentViewListAdapter"

    const-string v3, "APPLOGS: in destroy() Making visible tab null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$102(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public endPrefetch()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/InstantTab;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;

    :cond_0
    return-void
.end method

.method public getAssociateAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mAssociateAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentNativeChromeview()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->index()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTabId()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTabId()I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2700(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)I

    move-result v0

    return v0
.end method

.method public getIndexById(I)I
    .locals 5
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    const/4 v3, -0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    if-nez v1, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->isIncognito()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    if-nez v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabIndexById(I)I

    move-result v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public getMultiWindowMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMultiWindowRestored()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mMultiWindowRestored:Z

    return v0
.end method

.method public getNativeChromeviewById(I)I
    .locals 5
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    const/4 v4, -0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->isIncognito()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getNextTabIfClosed(I)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 14

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/Tab;->parentIsIncognito()Z

    move-result v13

    invoke-virtual {v10, v13}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v10

    if-nez v10, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    const/4 v3, 0x0

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    :cond_2
    invoke-virtual {p0, v9}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->indexOf(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v2

    if-nez v2, :cond_3

    move v10, v11

    :goto_1
    invoke-virtual {p0, v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/Tab;->parentIsIncognito()Z

    move-result v13

    invoke-virtual {v10, v13}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v10

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/Tab;->getParentId()I

    move-result v13

    invoke-interface {v10, v13}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v0

    :goto_2
    if-le v0, p1, :cond_5

    move v5, v12

    :goto_3
    move v4, p1

    :goto_4
    if-nez v8, :cond_7

    if-le v4, v5, :cond_7

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-boolean v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    if-nez v10, :cond_6

    move v10, v11

    :goto_5
    invoke-virtual {v13, v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v10

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v10, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v8

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v2, -0x1

    goto :goto_1

    :cond_4
    move v0, v12

    goto :goto_2

    :cond_5
    move v5, v0

    goto :goto_3

    :cond_6
    move v10, v12

    goto :goto_5

    :cond_7
    if-nez v8, :cond_9

    if-le v0, p1, :cond_9

    move v4, p1

    :goto_6
    if-nez v8, :cond_9

    if-ge v4, v0, :cond_9

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-boolean v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    if-nez v10, :cond_8

    move v10, v11

    :goto_7
    invoke-virtual {v13, v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v10

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v10, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v8

    goto :goto_6

    :cond_8
    move v10, v12

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    if-eq v9, v3, :cond_a

    if-eqz v3, :cond_a

    move-object v6, v3

    goto/16 :goto_0

    :cond_a
    if-eqz v7, :cond_b

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mInOverviewMode:Z
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$600(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Z

    move-result v10

    if-nez v10, :cond_b

    move-object v6, v7

    goto/16 :goto_0

    :cond_b
    if-eqz v8, :cond_c

    move-object v6, v8

    goto/16 :goto_0

    :cond_c
    if-eqz v1, :cond_d

    move-object v6, v1

    goto/16 :goto_0

    :cond_d
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-boolean v13, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    if-nez v13, :cond_e

    :goto_8
    invoke-virtual {v10, v11}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    goto/16 :goto_0

    :cond_e
    move v11, v12

    goto :goto_8
.end method

.method public getPrefetchedUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/InstantTab;->getPrefetchedUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRestoreTabCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mRestoreTabCount:I

    return v0
.end method

.method public getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, "ContentViewListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTab() called with position ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTabs.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/Tab;

    goto :goto_0
.end method

.method public getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/Tab;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public getTabFromView(Lorg/chromium/content/browser/ContentView;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/Tab;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public getTabId(ZI)I
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    return v1
.end method

.method public getTabIndexById(I)I
    .locals 3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getTabIndexByUrl(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getTabInfo(I)Lcom/sec/android/app/sbrowser/common/ExtTabInfo;
    .locals 7
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->isIncognito()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v6, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;-><init>()V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v4

    iput v4, v1, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->id:I

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getOpenerId()I

    move-result v4

    iput v4, v1, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->opernerTabId:I

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabIndexById(I)I

    move-result v4

    iput v4, v1, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->index:I

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->index()I

    move-result v0

    iget v4, v1, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->index:I

    if-ne v0, v4, :cond_0

    iput-boolean v5, v1, Lcom/sec/android/app/sbrowser/common/ExtTabInfo;->active:Z

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getTabTitle(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabURL(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public incrementRestoreTabCount()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mRestoreTabCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mRestoreTabCount:I

    return-void
.end method

.method public index()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    return v0
.end method

.method public indexOf(Lcom/sec/android/app/sbrowser/common/Tab;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isIncognito()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    return v0
.end method

.method public isTabCreated()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabCreated:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$4000(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Z

    move-result v0

    return v0
.end method

.method public launchNTP()Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 3

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->begin()V

    const-string v1, "chrome://newtab/"

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_OVERVIEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    return-object v0
.end method

.method public launchUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->cleanUpToolbar()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    return-object v0
.end method

.method public launchUrlFromExternalApp(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 11

    const/4 v5, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsFromExternalApp:Z

    if-eqz p3, :cond_0

    if-nez v7, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->launchUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v10

    :goto_0
    return-object v10

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "com.sec.android.app.sbrowser.unknown_app"

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControllers:[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)[Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    aget-object v9, v0, v5

    const-string v0, "loadingperformance"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "about:blank"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    const/4 v1, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->clearBrowsingData(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;ZZZZZ)V

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v9}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-interface {v9, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getAppAssociatedWith()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->launchUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v10

    invoke-virtual {v10, p2}, Lcom/sec/android/app/sbrowser/common/Tab;->associateWithApp(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v9}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_7

    invoke-interface {v9, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getAppAssociatedWith()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ContentViewListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS: launchUrlFromExternalApp() calling createNewTab .. i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZ)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v8

    const-string v0, "ContentViewListAdapter"

    const-string v1, "APPLOGS: launchUrlFromExternalApp() caling closeTab"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v10, v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->closeTab(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    move-object v10, v8

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    const-string v0, "ContentViewListAdapter"

    const-string v1, "APPLOGS: launchUrlFromExternalApp() calling launchUrl which inturn call createNewTab"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->launchUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10, p2}, Lcom/sec/android/app/sbrowser/common/Tab;->associateWithApp(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->setAssociateAppId(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public moveTab(II)V
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p2, v2, v3}, Lcom/sec/android/app/sbrowser/utilities/MathUtils;->clamp(III)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabIndexById(I)I

    move-result v0

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    if-nez v2, :cond_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    :cond_0
    if-eq v0, p2, :cond_1

    add-int/lit8 v2, v0, 0x1

    if-ne v2, p2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/Tab;

    if-ge v0, p2, :cond_3

    add-int/lit8 p2, p2, -0x1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v2, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    if-ne v0, v2, :cond_5

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabMoved(IIIZ)V
    invoke-static {v2, p1, v0, p2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$300(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IIIZ)V

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    if-ge v0, v2, :cond_6

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    if-lt p2, v2, :cond_6

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    if-le v0, v2, :cond_4

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    if-gt p2, v2, :cond_4

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIndex:I

    goto :goto_1
.end method

.method public onSetIndex(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;IZ)V
    .locals 5

    const/4 v4, 0x0

    if-nez p4, :cond_3

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->showTab(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabSelected(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;Z)V
    invoke-static {v1, v2, p3, p2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->isPhoneMultiwindowEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->saveOpendTabThumbnail()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyDataSetChanged()V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->moveTab(II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->saveOpendTabThumbnail()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->showTab(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabSelected(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;Z)V
    invoke-static {v1, v2, p3, p2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v1

    const-string v2, "enable-samsung-multiwindow"

    invoke-virtual {v1, v2}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->moveTab(II)V

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chrome://tabspreview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->saveOpendTabThumbnail()V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->moveTab(II)V

    goto :goto_2
.end method

.method public openClearBrowsingData()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mClearBrowsingDataActivityStarter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ClearBrowsingDataActivityStarter;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$000(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ClearBrowsingDataActivityStarter;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ClearBrowsingDataActivityStarter;->startActivity()V

    return-void
.end method

.method public openNewTab(Ljava/lang/String;IZ)V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabIndexById(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZ)Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_0
    return-void
.end method

.method public overrideScroll(FFFF)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->overrideScroll(FFFF)Z

    move-result v0

    return v0
.end method

.method public postSetIndexOnWait(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;IZ)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->selectionType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;
    invoke-static {v1, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1602(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToNotify:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1402(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControlType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;
    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1702(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    const-string v1, "ContentViewListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLOGS: No surface, postSetIndexOnWait currentTab = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$2;

    invoke-direct {v0, p0, p3, p4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$2;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;IZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mExecutorThread:Lcom/sec/android/app/sbrowser/common/ExecutorThread;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/ExecutorThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/ExecutorThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public preTabCreation(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZ)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 20

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->isExceedsThreshold()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->IS_ERROR_DIALOG_SHOWING:Z

    if-nez v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->showErrorDialog()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsTabCreationInProcess:Z
    invoke-static {v3, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2602(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z

    const/4 v10, 0x0

    :goto_0
    return-object v10

    :cond_1
    const/4 v8, 0x0

    const-string v3, "chrome://tabspreview/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mOrderController:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v6}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlOrderController;->willOpenInForeground(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;Z)Z

    move-result v8

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabId(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTabId()I
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2700(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move-object/from16 v6, p2

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyTabCreating(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;ZZ)V
    invoke-static/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;ZZ)V

    const-string v3, "ContentViewListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APPLOGS:Creating tab SurfaceReady state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->isSurfaceReady()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->createTabIfSurfaceReady(ILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    move/from16 v0, p4

    invoke-interface {v3, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v19

    const/16 v18, 0x0

    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getUseDesktopUserAgent()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getUseDesktopUserAgent()Z

    move-result v18

    :cond_3
    if-eqz v10, :cond_4

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getAssociateAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->associateWithApp(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    move-object/from16 v9, p0

    move/from16 v11, p3

    move-object/from16 v12, p2

    move-object/from16 v14, p1

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v8

    invoke-direct/range {v9 .. v18}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->onPostTabCreate(Lcom/sec/android/app/sbrowser/common/Tab;ILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;ZLjava/lang/String;IIZZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mIsTabCreationInProcess:Z
    invoke-static {v3, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2602(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z

    goto/16 :goto_0
.end method

.method public prefetchUrl(Ljava/lang/String;I)V
    .locals 4

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/utilities/URLUtilities;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "about:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "chrome:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/common/InstantTab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v3

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->parentIsIncognito()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-direct {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/common/InstantTab;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/InstantTab;->getPrefetchedUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/InstantTab;->getPrefetchedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mInstantTab:Lcom/sec/android/app/sbrowser/common/InstantTab;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/sbrowser/common/InstantTab;->prefetchUrl(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public purgeRenderProcessNativeMemory(I)V
    .locals 3

    const/high16 v2, -0x8000

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mTabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isSavedAndViewDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPid()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->purgeRenderProcessNativeMemory()V

    :cond_1
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public setAssociateAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mAssociateAppId:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_USER:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->setIndex(ILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V

    return-void
.end method

.method public setMultiWindowRestored(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mIsIncognito:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mMultiWindowRestored:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mMultiWindowRestored:Z

    goto :goto_0
.end method

.method public supportIntentFilters()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public switchTab(ZI)Z
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromeTabModel"
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->setMultiWindowMode(Z)V

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;->FROM_USER:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->setIndex(ILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v1

    const-string v2, "enable-samsung-multiwindow"

    invoke-virtual {v1, v2}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(ILandroid/os/Bundle;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->unregisterForContextMenu(Landroid/view/View;)V

    return-void
.end method
