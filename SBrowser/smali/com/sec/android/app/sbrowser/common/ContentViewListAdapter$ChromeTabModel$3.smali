.class Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$3;
.super Ljava/lang/Object;
.source "ContentViewListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->createCachedNtp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$3;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$3;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$3200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$3;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mPreloadWebViewContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$3100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$3;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$3200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$3;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$3200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$3;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mPreloadWebViewContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$3100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$3;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mPreloadWebViewContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$3100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$3;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$3200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const-string v0, "ContentViewListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS:ERROR createCachedNtp, calling show tab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$3;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$3200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$3;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$3200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$3;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->show(Landroid/app/Activity;)V

    goto :goto_0
.end method
