.class Lcom/nuance/connect/internal/LanguageServiceInternal$1;
.super Ljava/lang/Object;
.source "LanguageServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/LanguageServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/LanguageServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    const-string v0, "LanguageDLHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    invoke-static {}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$900()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$900()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$900()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 21

    sget-object v17, Lcom/nuance/connect/internal/LanguageServiceInternal$3;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$000(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v17

    const-string v18, "MESSAGE_HOST_SET_LANGUAGES_STATUS"

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v17, "DEFAULT_KEY"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/nuance/connect/internal/LanguageServiceInternal;->updateLanguagesData(Ljava/util/Map;)V
    invoke-static {v0, v10}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$100(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_1
    const/4 v8, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v17, "DEFAULT_KEY"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v17, "filePath"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->downloadComplete(Ljava/io/File;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/nuance/connect/internal/LanguageServiceInternal;->markLanguageInstalled(Ljava/lang/String;)V
    invoke-static {v0, v8}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$300(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/lang/String;)V

    const/high16 v15, -0x8000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$400(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v17

    sget-object v18, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_INSTALLED:Lcom/nuance/connect/internal/common/InternalMessages;

    const/high16 v19, -0x8000

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v8, v15, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->notifyCallbacksOfStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$000(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception Installing: lang="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " message="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$400(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v17

    sget-object v18, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_INSTALLED:Lcom/nuance/connect/internal/common/InternalMessages;

    const/16 v19, 0x1

    const/high16 v20, -0x8000

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v8, v2, v3}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-interface {v5, v0}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->downloadFailed(I)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    new-instance v17, Ljava/lang/Exception;

    const-string v18, "(Internal) Not successful"

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v17, "PROP_LANGUAGE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v17, "PROP_DOWNLOAD_PERCENT"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-static {v12}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$500(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Set;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->downloadPercentage(I)V

    goto/16 :goto_0

    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v17, "DEFAULT_KEY"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/nuance/connect/internal/LanguageServiceInternal;->removeLanguage(Ljava/lang/String;)V
    invoke-static {v0, v8}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$600(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v17, "PROP_LANGUAGE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "DEFAULT_KEY"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v14}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->downloadFailed(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "DEFAULT_KEY"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$500(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Set;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$000(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MESSAGE_HOST_LANGUAGE_DOWNLOAD_CANCEL_ACK: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-interface {v5, v0}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->downloadStopped(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$000(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "redownload was requested for canceled language, redownloading: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    #calls: Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageIdByName(Ljava/lang/String;)I
    invoke-static {v9}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$800(Ljava/lang/String;)I

    move-result v16

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    move-object/from16 v0, v18

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadLanguage(ILcom/nuance/connect/api/LanguageService$DownloadCallback;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    move-object/from16 v17, v0

    #getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static/range {v17 .. v17}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$000(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error Attempting to Redownload with message: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    return-void
.end method
