.class Lcom/sec/android/app/sbrowser/common/Tab$7;
.super Lorg/chromium/content/browser/ContentViewClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab;->initContentViewClients()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/Tab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewClient;-><init>()V

    return-void
.end method

.method private updateTitle()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4800(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3076(Lcom/sec/android/app/sbrowser/common/Tab;I)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4802(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onContextualActionBarHidden()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->notifyContextualActionBarStateChanged(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$5500(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    return-void
.end method

.method public onContextualActionBarShown()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v1, 0x1

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->notifyContextualActionBarStateChanged(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$5500(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    return-void
.end method

.method public onImeEvent()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mAppAssociatedWith:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$5602(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onTabCrash()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/Tab;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onTabCrash received from Engine"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1702(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    check-cast v1, Lorg/samsung/content/sbrowser/SbrContentView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsLoading:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1700(Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/samsung/content/sbrowser/SbrContentView;->setIsPageLoading(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->getMainActivityStatus()Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$5000(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsHidden:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$5100(Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->PAUSED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->STOPPED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->DESTROYED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTabCrashedInBackground:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$5202(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/Tab;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTabCrash Tab is hidden or Activity is paused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->notifyTabCrashed()V
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$5400(Lcom/sec/android/app/sbrowser/common/Tab;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->showCrashTabView()V
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$5300(Lcom/sec/android/app/sbrowser/common/Tab;)V

    goto :goto_0
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4800(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3076(Lcom/sec/android/app/sbrowser/common/Tab;I)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTitle:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4802(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$7;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->notifyPageTitleChanged()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$4900(Lcom/sec/android/app/sbrowser/common/Tab;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
