.class Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$4;
.super Ljava/lang/Object;
.source "ExtracterController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->displayReaderView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$4;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$4;->val$url:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$4;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->isTranslateNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$4;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->isTranslationCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PGSUM"

    const-string v2, "mExecutorThread  wait Called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$4;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$1100(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Lorg/samsung/content/sbrowser/SynchronizeObj;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SynchronizeObj;->doWait()V

    :cond_0
    const-string v1, "PGSUM"

    const-string v2, "mExecutorThread  wait ended"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "context"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$4;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$000(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mTranslationResult"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$4;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mTranslationResult:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$1200(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x29

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastNotification(ILandroid/os/Bundle;)V

    return-void
.end method
