.class Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$InterceptNavigationDelegateReader;
.super Ljava/lang/Object;
.source "ReaderController.java"

# interfaces
.implements Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InterceptNavigationDelegateReader"
.end annotation


# instance fields
.field final mUrlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$InterceptNavigationDelegateReader;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$InterceptNavigationDelegateReader;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$000(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/UrlHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$InterceptNavigationDelegateReader;->mUrlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    return-void
.end method


# virtual methods
.method public onUrlLoadRequested(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shouldIgnoreNavigation(Lorg/chromium/components/navigation_interception/NavigationParams;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->url:Ljava/lang/String;

    const-string v6, "/www.youtube.com/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v5, "com.google.android.youtube"

    const-string v6, "com.google.android.youtube.WatchActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$InterceptNavigationDelegateReader;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$000(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v6, "tel:"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$InterceptNavigationDelegateReader;->mUrlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$InterceptNavigationDelegateReader;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mUi:Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$100(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/sec/android/app/sbrowser/common/UrlHandler;->linkify(Lorg/chromium/content/browser/ContentView;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    :cond_2
    const-string v6, "mailto:"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$InterceptNavigationDelegateReader;->mUrlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$InterceptNavigationDelegateReader;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mUi:Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$100(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/sec/android/app/sbrowser/common/UrlHandler;->linkify(Lorg/chromium/content/browser/ContentView;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    :cond_3
    const-string v6, "content://"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "chrome://newtab/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$InterceptNavigationDelegateReader;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$200(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;)V

    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v6, "openLinkInTabFromReader"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$InterceptNavigationDelegateReader;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$000(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/app/Activity;

    move-result-object v4

    const/16 v6, 0x21

    invoke-virtual {v4, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$InterceptNavigationDelegateReader;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$000(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    move v4, v5

    goto :goto_0
.end method
