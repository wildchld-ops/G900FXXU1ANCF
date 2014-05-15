.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$4;
.super Ljava/lang/Object;
.source "MainActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sendSyncCompletedMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-wide/16 v5, -0x1

    sget v2, Lcom/sec/android/app/sbrowser/provider/SBrowserConstants;->iDownSyncCount:I

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->completedSync:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$600(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/sbrowser/provider/SBrowserConstants;->iDownSyncCount:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->updateDownSyncCount(Ljava/lang/String;I)V

    const/4 v2, 0x0

    sput v2, Lcom/sec/android/app/sbrowser/provider/SBrowserConstants;->iDownSyncCount:I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x15

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SBrowserSync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSyncCompletedMessages : SBROWSER_TAB_SYNC_COMPLETED: success :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SBrowserSync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSyncCompletedMessages : SBROWSER_BOOKMARK_SYNC_COMPLETED: success :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
