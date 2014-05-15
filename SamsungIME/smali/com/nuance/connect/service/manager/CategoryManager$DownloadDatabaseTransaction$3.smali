.class Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$3;
.super Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;
.source "CategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getResponse(Lcom/nuance/connect/service/comm/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$3;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/service/manager/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onDownloadStatusResponse(Lcom/nuance/connect/service/comm/Command;II)V
    .locals 4

    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$3;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "download"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x42c8

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$3;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    #calls: Lcom/nuance/connect/service/manager/CategoryManager;->sendDictionaryDownloadProgress(Ljava/lang/String;I)V
    invoke-static {v1, v2, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$400(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$3;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->access$700(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "PROP_DOWNLOAD_PERCENT"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$3;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SETTINGS_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$3;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->rollback()V

    goto :goto_0
.end method

.method public onFileResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$3;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    #calls: Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadResponse(Lcom/nuance/connect/service/comm/Response;)V
    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->access$600(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$3;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "Error"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shouldn\'t get here!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
