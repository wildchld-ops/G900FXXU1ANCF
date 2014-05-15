.class Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;
.super Lcom/nuance/connect/service/manager/AbstractTransaction;
.source "CategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadDatabaseTransaction"
.end annotation


# instance fields
.field private volatile canceled:Z

.field private final catDb:Ljava/lang/String;

.field private currentCommand:Lcom/nuance/connect/service/comm/Command;

.field private downloadFilePath:Ljava/lang/String;

.field private isForcedForeground:Z

.field private final properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategoryManager;

.field private final type:I


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V
    .locals 5

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->isForcedForeground:Z

    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$200(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "25"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->type:I

    iget v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    iget-object v2, p1, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v3, "13"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get() - can\'t fetch no known core ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; langId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$200(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v2

    const-string v3, "13"

    invoke-virtual {v2, p2, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; core: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {p1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$200(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v3

    const-string v4, "13"

    invoke-virtual {v3, p2, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; cores: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "STEP"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "SUBSCRIBED"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->subscribe()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->get()V

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->subscribeResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;Lcom/nuance/connect/service/comm/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->ackResponse(Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method private ackResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 6

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "ackResponse()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->canceled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "ackResponse canceled"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->rollback()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->finishTransaction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/connect/service/manager/CategoryManager;->updateLastProcessed(Ljava/lang/String;JI)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->submanagerChinese:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->install(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->submanagerLivingLang:Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1100(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->install(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->submanagerResources:Lcom/nuance/connect/service/manager/CategorySubmanagerResources;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1200(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/service/manager/CategorySubmanagerResources;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/manager/CategorySubmanagerResources;->install(Ljava/lang/String;)Z

    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    #calls: Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$100(Lcom/nuance/connect/service/manager/CategoryManager;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    #calls: Lcom/nuance/connect/service/manager/CategoryManager;->resetCategoryDownloadState(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->access$900(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    iget v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DEFAULT_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PROP_CATEGORY_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_DOWNLOAD_FAILED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private downloadResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 6

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v3}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string v4, "downloadResponse()"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-boolean v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->canceled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v3}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string v4, "downloadResponse canceled"

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->rollback()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-static {v3}, Lcom/nuance/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v4, "10"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v4, "FILE_LOCATION"

    iget-object v5, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v4, "STEP"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string v4, "ack"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/connect/service/manager/CategoryManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    iget-object v3, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v4, "10"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    iput-object v3, v0, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    new-instance v3, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$4;

    invoke-direct {v3, p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$4;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;)V

    iput-object v3, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v3}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string v4, "Attempting to acknowledge a category without needed data."

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->rollback()V

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    #calls: Lcom/nuance/connect/service/manager/CategoryManager;->resetCategoryDownloadState(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/nuance/connect/service/manager/CategoryManager;->access$900(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private get()V
    .locals 4

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    const/4 v3, 0x0

    #calls: Lcom/nuance/connect/service/manager/CategoryManager;->sendDictionaryDownloadProgress(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->access$400(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string v2, "get"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$2;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$2;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;)V

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    iget-object v1, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "15"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-void
.end method

.method private getResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->canceled:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v5}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v5

    const-string v6, "getResponse canceled"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->rollback()V

    :goto_0
    return-void

    :cond_0
    iget v5, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v9, v5, :cond_1

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    iget-object v4, p1, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v6, "51"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v6, "4"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v6, "STEP"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string v6, "download"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/nuance/connect/service/manager/CategoryManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v2

    iput-object v4, v2, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    const-string v5, "GET"

    iput-object v5, v2, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    iput-boolean v8, v2, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    iput-boolean v8, v2, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    iput-boolean v9, v2, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    iput-boolean v9, v2, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    iput-object v1, v2, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    new-instance v5, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$3;

    invoke-direct {v5, p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$3;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;)V

    iput-object v5, v2, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    iput-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "DEFAULT_KEY"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "PROP_CATEGORY_ID"

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v5, v5, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v6, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_DOWNLOAD_FAILED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v5, v6, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->rollback()V

    goto :goto_0
.end method

.method private subscribe()V
    .locals 4

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v2, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    const-string v2, "subscribe"

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/CategoryManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iget-object v1, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "15"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$1;-><init>(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;)V

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-void
.end method

.method private subscribeResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processSubscribeResponse(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget v1, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v4, v1, :cond_1

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v2, "SUBSCRIBED"

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$200(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    const-string v2, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "subscribeResponse() - Initiating unsubscribe."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->rollback()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->get()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->rollback()V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->canceled:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->canceled:Z

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "STEP"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v1, "UNSUBSCRIBE_PENDING"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$200(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "temp"

    const-string v2, ".download"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v3, v3, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/connect/service/ConnectClient;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->properties:Ljava/util/HashMap;

    const-string v2, "FILE_LOCATION"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public forceForeground()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->isForcedForeground:Z

    return-void
.end method

.method public getDownloadFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    #calls: Lcom/nuance/connect/service/manager/CategoryManager;->getTransactionName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/service/comm/Command;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    return-object v0
.end method

.method public getPriority()I
    .locals 2

    iget v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    .locals 2

    iget v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->type:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-boolean v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->isForcedForeground:Z

    if-eqz v1, :cond_0

    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method getType()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->type:I

    return v0
.end method

.method public rollback()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->catDb:Ljava/lang/String;

    #calls: Lcom/nuance/connect/service/manager/CategoryManager;->clearCategoryDownload(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1400(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    #getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error removing temporary file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_1
    iput-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->downloadFilePath:Ljava/lang/String;

    :cond_2
    iput-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->currentCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->finishTransaction(Ljava/lang/String;)V

    return-void
.end method
