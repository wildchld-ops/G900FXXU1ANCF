.class Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$2;
.super Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
.source "ToolBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->initializeNotificationHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;-><init>()V

    return-void
.end method

.method private onNativeLoadStopped(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "tabId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    #calls: Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->onPageLoadFinished(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->access$200(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;I)V

    return-void
.end method

.method private postDownloadFinished(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x1

    const-string v5, "ToolbarDelegate"

    const-string v6, "Download Broadcast Received"

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "success"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v7, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "path"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    #calls: Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->copyImageToBrowser(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v5, v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->access$300(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v2, v7, v5}, Ljava/io/File;->setReadable(ZZ)Z

    const-string v5, "CopyImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CopyImage path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->getActivity()Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-result-object v3

    const-string v5, "clipboardEx"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v1, :cond_0

    const-string v5, "CopyImage"

    const-string v6, "ClipExMngr Exists"

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    if-eqz v0, :cond_1

    const-string v5, "CopyImage"

    const-string v6, "clipBmp Exists"

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3, v0}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "CopyImage"

    const-string v6, "CopyImage : clipEx.setData returned false."

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v5, "CopyImage"

    const-string v6, "CopyImage:clipEx.setData returned true."

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$2;->onNativeLoadStopped(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$2;->postDownloadFinished(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->access$100(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "current_search_engine_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mSearchengineBaseController:Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->access$100(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;->getcurrentSearchEngineFavIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->setSearchEngineFavIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
        0x24 -> :sswitch_2
    .end sparse-switch
.end method
