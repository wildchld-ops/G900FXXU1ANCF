.class Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$3;
.super Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
.source "ExtracterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$3;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string v0, "ExtractModeController"

    const-string v1, " EXTRACT_NEW_TAB_FINISH_LOAD Broadcast Received"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$3;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$000(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$3;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mIsLauchFromReaderList:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$900(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$3;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mProgressDialogue:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$1000(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$3;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mProgressDialogue:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$1000(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$3;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mProgressDialogue:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$1000(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mTranslationResult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$3;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->prepareAndAppendTranslation()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$3;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->readerLoadDatawithBaseUrl()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x29 -> :sswitch_1
    .end sparse-switch
.end method
