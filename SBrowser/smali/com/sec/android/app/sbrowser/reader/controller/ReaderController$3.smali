.class Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$3;
.super Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
.source "ReaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$3;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

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
    const-string v0, "ReaderController"

    const-string v1, " READER_NEW_TAB_FINISH_LOAD Broadcast Received"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$3;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$000(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$3;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mIsLauchFromReaderList:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$900(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$3;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->readerLoadDatawithBaseUrl()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method
