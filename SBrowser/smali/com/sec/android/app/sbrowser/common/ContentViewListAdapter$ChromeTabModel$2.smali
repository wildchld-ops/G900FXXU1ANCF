.class Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$2;
.super Ljava/lang/Object;
.source "ContentViewListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->postSetIndexOnWait(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

.field final synthetic val$isIndexChanged:Z

.field final synthetic val$lastId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$2;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$2;->val$lastId:I

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$2;->val$isIndexChanged:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$2;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ContentViewListAdapter"

    const-string v3, "APPLOGS:ON_INDEX_SET already in queue, removing old request"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$2;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "index"

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$2;->val$lastId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "is_index_changed"

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$2;->val$isIndexChanged:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v4, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$2;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->isSurfaceReady()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$2;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SynchronizeObj;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SynchronizeObj;->doWait()V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$2;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->tabCreationWaiting:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2000(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ContentViewListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APPLOGS:Tab creation in process, Ignore SET INDEX of tab="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$2;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToNotify:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$2;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
