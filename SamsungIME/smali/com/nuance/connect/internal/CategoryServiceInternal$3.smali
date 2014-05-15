.class Lcom/nuance/connect/internal/CategoryServiceInternal$3;
.super Ljava/lang/Object;
.source "CategoryServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/CategoryServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    const-string v0, "CategoryHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 1

    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1100()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 30

    sget-object v6, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    move-object/from16 v0, p2

    iget v11, v0, Landroid/os/Message;->what:I

    invoke-static {v11}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v11

    aget v6, v6, v11

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v11, "DEFAULT_KEY"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    const/4 v11, 0x3

    invoke-interface {v6, v11}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadStopped(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    invoke-virtual {v11, v5, v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->installDictionary(Ljava/lang/String;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    const-string v11, "STATUS_AVAILABLE"

    invoke-virtual {v6, v11}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v11, "DEFAULT_KEY"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v11, "PROP_CATEGORY_ID"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    move/from16 v0, v27

    invoke-interface {v6, v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadFailed(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v6

    const-string v11, "MESSAGE_HOST_SET_DICTIONARIES_STATUS"

    invoke-interface {v6, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    const-string v6, "DictionaryList"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_5

    const-string v6, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v25, v0

    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    aget-object v3, v18, v22

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "_status"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v20

    check-cast v20, Ljava/util/HashMap;

    if-eqz v20, :cond_4

    new-instance v2, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    const-string v6, "PROP_CATEGORY_ID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "PROP_NAME"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "PROP_DESCRIPTION"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v11, "PROP_LANGUAGE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    const-string v6, "PROP_INSTALLEDSTATUS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getStatus()Ljava/lang/String;

    move-result-object v29

    const-string v6, "STATUS_CANCELED"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v23, 0x1

    :cond_3
    if-nez v23, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListReceived:Z
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600(Lcom/nuance/connect/internal/CategoryServiceInternal;)Z

    move-result v6

    if-nez v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    const/4 v11, 0x1

    #setter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListReceived:Z
    invoke-static {v6, v11}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$602(Lcom/nuance/connect/internal/CategoryServiceInternal;Z)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyDictionariesofStatus()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    const-string v11, "com.nuance.connect.DATA_AVAILABLE"

    const-string v14, "com.nuance.connect.TYPE_CATEGORY_DATA"

    invoke-virtual {v6, v11, v14}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v6

    const-string v11, "MESSAGE_HOST_DICTIONARY_INSTALL_READY"

    invoke-interface {v6, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    if-eqz v19, :cond_7

    const-string v6, "DEFAULT_KEY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "filePath"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    const-string v11, "com.nuance.connect.DATA_AVAILABLE"

    const-string v14, "com.nuance.connect.TYPE_CATEGORY_DATA"

    invoke-virtual {v6, v11, v14}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v11}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadComplete(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v6

    sget-object v11, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    const/high16 v14, -0x8000

    const/4 v15, 0x0

    invoke-interface {v6, v11, v5, v14, v15}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    const-string v6, "STATUS_INSTALLED"

    invoke-virtual {v2, v6}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyDictionariesofStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v6

    sget-object v11, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v14, 0x1

    const/high16 v15, -0x8000

    invoke-interface {v6, v11, v5, v14, v15}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    goto/16 :goto_0

    :cond_8
    const/16 v28, 0x1

    goto :goto_2

    :catch_0
    move-exception v21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception Installing: dict="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/16 v28, 0x1

    goto :goto_2

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    const-string v6, "download"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v6, "dictionary"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CATEGORY_TYPE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-virtual {v6, v13}, Lcom/nuance/connect/internal/CategoryServiceInternal;->isCategoryLivingLanguage(I)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "CATEGORY_LANGUAGE_ID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "CATEGORY_LOCALE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "CATEGORY_COUNTRY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v4 .. v10}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->downloadProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    invoke-interface {v6, v10}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadPercentage(I)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;
    invoke-static {v11}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;
    invoke-static {v11}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v11

    const-wide/16 v14, 0x3a98

    invoke-virtual {v6, v11, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v11

    sget-object v14, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CHINESE_CAT_DB_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    sget-object v15, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v6, v15}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v6}, Lcom/nuance/connect/host/service/BuildSettings;->isChineseCategoryEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v11, v14, v6}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    const-string v6, "CATEGORY_ID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v6, "CATEGORY_TYPE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v6, "CATEGORY_COUNT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    const-string v6, "CATEGORY_LANGUAGE_ID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "CATEGORY_LOCALE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "CATEGORY_COUNTRY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    move-object v11, v4

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-interface/range {v11 .. v17}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->subscriptionAdded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    const-string v6, "CATEGORY_ID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v6, "CATEGORY_TYPE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v6, "CATEGORY_COUNT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    const-string v6, "CATEGORY_LANGUAGE_ID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "CATEGORY_LOCALE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "CATEGORY_COUNTRY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    move-object v11, v4

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-interface/range {v11 .. v17}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->subscriptionUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    const-string v6, "CATEGORY_ID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v6, "CATEGORY_TYPE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v6, "CATEGORY_LANGUAGE_ID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "CATEGORY_LOCALE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "CATEGORY_COUNTRY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    move-object v11, v4

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-interface/range {v11 .. v16}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->subscriptionRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    const-string v11, "DEFAULT_KEY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    #setter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUpdatesPending:Z
    invoke-static {v6, v11}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1002(Lcom/nuance/connect/internal/CategoryServiceInternal;Z)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    #getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUpdatesPending:Z
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Z

    move-result v6

    invoke-interface {v4, v6}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->updatesAvailable(Z)V

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    return-void
.end method
