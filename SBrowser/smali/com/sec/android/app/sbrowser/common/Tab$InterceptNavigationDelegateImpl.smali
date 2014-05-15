.class Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InterceptNavigationDelegateImpl"
.end annotation


# instance fields
.field private mLastLoadUrlAddress:Ljava/lang/String;

.field final mUrlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/Tab;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/UrlHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->mUrlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/Tab$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;-><init>(Lcom/sec/android/app/sbrowser/common/Tab;)V

    return-void
.end method

.method private getReferrerUrl()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getNavigationHistory()Lorg/chromium/content/browser/NavigationHistory;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/chromium/content/browser/NavigationHistory;

    invoke-virtual {v2}, Lorg/chromium/content/browser/NavigationHistory;->getCurrentEntryIndex()I

    move-result v0

    if-ltz v0, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/chromium/content/browser/NavigationHistory;

    invoke-virtual {v2}, Lorg/chromium/content/browser/NavigationHistory;->getEntryCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_1
    check-cast v1, Lorg/chromium/content/browser/NavigationHistory;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content/browser/NavigationEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/NavigationEntry;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public onDismissLinkifyDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->urlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->urlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/UrlHandler;->linkifyDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->urlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/UrlHandler;->linkifyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab;->urlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/common/UrlHandler;->linkifyDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onUrlLoadRequested(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "rtsp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->mLastLoadUrlAddress:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public shouldIgnoreNavigation(Lorg/chromium/components/navigation_interception/NavigationParams;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v3, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget v6, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->pageTransitionType:I

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mPageTransitionType:I
    invoke-static {v5, v6}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4502(Lcom/sec/android/app/sbrowser/common/Tab;I)I

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->handleSnapshotOrPrintJobUrl(Ljava/lang/String;)Z
    invoke-static {v5, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4600(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->mLastLoadUrlAddress:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->mLastLoadUrlAddress:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->mLastLoadUrlAddress:Ljava/lang/String;

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/chromium/content/browser/ContentViewCore;->setIgnoreNavigationStatus(Z)V

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->doStartLoading(Ljava/lang/String;)V

    :cond_2
    const-string v4, "CMCC"

    const-string v5, "CscFeature_Web_EnableMultipleApn4"

    invoke-static {v5}, Lorg/samsung/base/Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    const-string v4, "about:blank"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->startNetwork(Landroid/content/Context;I)V

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    iget-boolean v5, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->isPost:Z

    if-eqz v5, :cond_6

    if-eqz v3, :cond_12

    const-string v5, "rtsp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_6
    const/4 v0, 0x0

    if-eqz v3, :cond_7

    sget-object v5, Lcom/sec/android/app/sbrowser/utilities/URLUtilities;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    :cond_7
    iget v5, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->pageTransitionType:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_8

    iget v5, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->pageTransitionType:I

    if-ne v5, v2, :cond_b

    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTabHost:Lcom/sec/android/app/sbrowser/common/Tab$TabHost;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1300(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab$TabHost;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTabHost:Lcom/sec/android/app/sbrowser/common/Tab$TabHost;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1300(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab$TabHost;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/Tab$TabHost;->supportIntentFilters()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    if-eqz v5, :cond_9

    if-nez v0, :cond_c

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/common/Tab;->urlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/sbrowser/common/UrlHandler;->shouldOverrideUrlLoading(Lorg/chromium/content/browser/ContentView;Ljava/lang/String;)Z

    move-result v1

    :cond_9
    :goto_3
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1400(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1400(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;->resetLayerPositions()V

    :cond_a
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/chromium/content/browser/ContentView;->canGoToOffset(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/common/Tab;->mWebContentsDelegate:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->closeContents()V

    goto/16 :goto_1

    :cond_b
    move v2, v4

    goto :goto_2

    :cond_c
    iget-boolean v5, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->isRedirect:Z

    if-eqz v5, :cond_d

    iget v5, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->pageTransitionType:I

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/common/Tab;->urlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/sbrowser/common/UrlHandler;->shouldOverrideUrlLoading(Lorg/chromium/content/browser/ContentView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_3

    :cond_d
    if-eqz v0, :cond_e

    iget-boolean v5, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->isRedirect:Z

    if-nez v5, :cond_f

    :cond_e
    if-eqz v2, :cond_11

    :cond_f
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mPageTransitionType:I
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4500(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_10

    const-string v5, "paypal.com"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/common/Tab;->urlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/sbrowser/common/UrlHandler;->shouldOverrideUrlLoading(Lorg/chromium/content/browser/ContentView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_3

    :cond_10
    const/4 v1, 0x0

    goto :goto_3

    :cond_11
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/common/Tab;->urlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/sbrowser/common/UrlHandler;->shouldOverrideUrlLoading(Lorg/chromium/content/browser/ContentView;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_3

    :cond_12
    iget-boolean v4, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->isPost:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/common/Tab;->urlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/app/sbrowser/common/UrlHandler;->shouldOverrideUrlLoading(Lorg/chromium/content/browser/ContentView;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_1
.end method

.method public shouldIgnoreNewTab(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->handleSnapshotOrPrintJobUrl(Ljava/lang/String;)Z
    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4600(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$InterceptNavigationDelegateImpl;->mUrlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/sbrowser/common/UrlHandler;->shouldOverrideNewTab(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
