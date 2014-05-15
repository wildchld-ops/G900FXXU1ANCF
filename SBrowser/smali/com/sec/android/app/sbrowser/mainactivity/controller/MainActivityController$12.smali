.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$12;
.super Ljava/lang/Object;
.source "MainActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->changeToIncognitoMode(Lorg/chromium/content/browser/ContentView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

.field final synthetic val$localChromeView:Lorg/chromium/content/browser/ContentView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lorg/chromium/content/browser/ContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$12;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$12;->val$localChromeView:Lorg/chromium/content/browser/ContentView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v3

    const-string v4, "enable-samsung-multiwindow"

    invoke-virtual {v3, v4}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$12;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTabSwitchAnimator:Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$2300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$12;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->setPrevioustab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$12;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$12;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    :cond_1
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$12;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$12;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$12;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "about:blank"

    :cond_2
    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_INSTANT:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->launchUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$12;->val$localChromeView:Lorg/chromium/content/browser/ContentView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$12;->val$localChromeView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$12;->val$localChromeView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://com.sec.android.app.sbrowser.scraplist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    :cond_4
    return-void
.end method
