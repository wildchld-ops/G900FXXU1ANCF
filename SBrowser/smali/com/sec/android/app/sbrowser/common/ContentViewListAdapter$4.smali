.class Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;
.super Landroid/os/Handler;
.source "ContentViewListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->tabCreationWaiting:Z
    invoke-static {v3, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$2002(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Z)Z

    const-string v3, "ContentViewListAdapter"

    const-string v4, "APPLOGS:HANDLER_CREATE_TAB, creating tab"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->prepareNewTabCreation(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "ContentViewListAdapter"

    const-string v4, "APPLOGS:SHOW of closed tab, returning"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "ContentViewListAdapter"

    const-string v4, "APPLOGS: HANDLER_SHOW_TAB mSbrContentViewRenderView is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->isSurfaceReady()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "ContentViewListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APPLOGS:HANDLER_SHOW_TAB, surface ready, SHOWING TAB ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mVisibleTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->show(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    const-string v3, "ContentViewListAdapter"

    const-string v4, "APPLOGS:HANDLER_SHOW_TAB,surfac not ready, ignoring"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string v3, "ContentViewListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APPLOGS:HANDLER_ACTIVITY_ON_RESUME, mIsSurfaceReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->isSurfaceReady()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$4902(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lorg/chromium/content/browser/ContentView;)Lorg/chromium/content/browser/ContentView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->isSurfaceReady()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$4900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "ContentViewListAdapter"

    const-string v4, "APPLOGS:HANDLER_ACTIVITY_ON_RESUME,surface ready, calling getCurrentTab().onActivityResume()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$4900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->onActivityResume()V

    goto/16 :goto_0

    :cond_3
    const-string v3, "ContentViewListAdapter"

    const-string v4, "APPLOGS:HANDLER_ACTIVITY_ON_RESUME,surface not ready, ignoring"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    const-string v3, "ContentViewListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APPLOGS:Handler msg ON_INDEX_SET Rcvd tab = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToNotify:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "index"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "is_index_changed"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mControlType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1700(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabToNotify:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1400(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->selectionType:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$1600(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;

    move-result-object v5

    invoke-interface {v3, v4, v5, v1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->onSetIndex(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;IZ)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
