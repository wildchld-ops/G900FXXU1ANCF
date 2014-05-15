.class Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$6;
.super Ljava/lang/Object;
.source "ContentViewListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->showTabIfSurfaceReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ContentViewListAdapter"

    const-string v1, "APPLOGS:HANDLER_SHOW_TAB:Msg already in q, removing"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ContentViewListAdapter"

    const-string v1, "APPLOGS: showTabIfSurfaceReady mSbrContentViewRenderView is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->isSurfaceReady()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SynchronizeObj;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SynchronizeObj;->doWait()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->tabCreationWaiting:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2000(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ContentViewListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS:Tab creation in process, Ignore SHOW TAB ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1800(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
