.class Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;
.super Ljava/lang/Object;
.source "ContentViewListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZ)Lcom/sec/android/app/sbrowser/common/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

.field final synthetic val$parentId:I

.field final synthetic val$parentIsIncognito:Z

.field final synthetic val$position:I

.field final synthetic val$type:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;ZIILjava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;->val$parentIsIncognito:Z

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;->val$position:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;->val$parentId:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;->val$url:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;->val$type:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "ContentViewListAdapter"

    const-string v3, "APPLOGS: createNewTab mSbrContentViewRenderView is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->isSurfaceReady()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SynchronizeObj;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SynchronizeObj;->doWait()V

    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "parentIsIncognito"

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;->val$parentIsIncognito:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "position"

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;->val$position:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "parentId"

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;->val$parentId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "url"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;->val$type:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mLaunchType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$3802(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$6;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
