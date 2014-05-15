.class Lcom/nuance/connect/internal/AddonServiceInternal$1;
.super Ljava/lang/Object;
.source "AddonServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/AddonServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/AddonServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/AddonServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    const-string v0, "AddonHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    invoke-static {}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$400()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$400()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$400()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 15

    sget-object v12, Lcom/nuance/connect/internal/AddonServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/os/Message;->what:I

    invoke-static {v13}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v12, "DEFAULT_KEY"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    if-eqz v12, :cond_3

    :try_start_0
    const-string v12, "DEFAULT_KEY"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    new-instance v1, Lcom/nuance/connect/internal/common/Addon;

    invoke-direct {v1, v8}, Lcom/nuance/connect/internal/common/Addon;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    :goto_1
    iget-object v12, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    #getter for: Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;
    invoke-static {v12}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$000(Lcom/nuance/connect/internal/AddonServiceInternal;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_2

    iget-object v13, v1, Lcom/nuance/connect/internal/common/Addon;->id:Ljava/lang/String;

    iget-object v12, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    #getter for: Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;
    invoke-static {v12}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$000(Lcom/nuance/connect/internal/AddonServiceInternal;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nuance/connect/internal/common/Addon;

    iget-object v12, v12, Lcom/nuance/connect/internal/common/Addon;->id:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "STEP"

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v10, :cond_1

    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v12, 0x5

    if-lt v5, v12, :cond_4

    iget-object v12, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    #getter for: Lcom/nuance/connect/internal/AddonServiceInternal;->currentAddonDownloads:Ljava/util/Map;
    invoke-static {v12}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$100(Lcom/nuance/connect/internal/AddonServiceInternal;)Ljava/util/Map;

    move-result-object v12

    iget-object v13, v1, Lcom/nuance/connect/internal/common/Addon;->id:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    :try_start_2
    iget-object v12, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    #getter for: Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;
    invoke-static {v12}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$000(Lcom/nuance/connect/internal/AddonServiceInternal;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v12, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    #getter for: Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;
    invoke-static {v12}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$000(Lcom/nuance/connect/internal/AddonServiceInternal;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    #calls: Lcom/nuance/connect/internal/AddonServiceInternal;->persistAddonList()V
    invoke-static {v12}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$200(Lcom/nuance/connect/internal/AddonServiceInternal;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_3
    iget-object v12, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    #getter for: Lcom/nuance/connect/internal/AddonServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v12}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$300(Lcom/nuance/connect/internal/AddonServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v12

    const-string v13, "com.nuance.connect.DATA_AVAILABLE"

    const-string v14, "com.nuance.connect.TYPE_ADDON_DATA"

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto :goto_0

    :cond_4
    :try_start_3
    iget-object v12, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    #getter for: Lcom/nuance/connect/internal/AddonServiceInternal;->currentAddonDownloads:Ljava/util/Map;
    invoke-static {v12}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$100(Lcom/nuance/connect/internal/AddonServiceInternal;)Ljava/util/Map;

    move-result-object v12

    iget-object v13, v1, Lcom/nuance/connect/internal/common/Addon;->id:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "STATUS_DOWNLOADING"

    iput-object v12, v1, Lcom/nuance/connect/internal/common/Addon;->state:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_4
    iget-object v12, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    #getter for: Lcom/nuance/connect/internal/AddonServiceInternal;->currentAddonDownloads:Ljava/util/Map;
    invoke-static {v12}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$100(Lcom/nuance/connect/internal/AddonServiceInternal;)Ljava/util/Map;

    move-result-object v12

    iget-object v13, v1, Lcom/nuance/connect/internal/common/Addon;->id:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v12

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v12, "PROP_DOWNLOAD_PERCENT"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v12, "PROP_ADDON"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "STATUS_DOWNLOADING"

    if-gez v7, :cond_7

    iget-object v12, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    #getter for: Lcom/nuance/connect/internal/AddonServiceInternal;->currentAddonDownloads:Ljava/util/Map;
    invoke-static {v12}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$100(Lcom/nuance/connect/internal/AddonServiceInternal;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "STATUS_AVAILABLE"

    :goto_4
    const/4 v4, 0x0

    :goto_5
    iget-object v12, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    #getter for: Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;
    invoke-static {v12}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$000(Lcom/nuance/connect/internal/AddonServiceInternal;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_6

    iget-object v12, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    #getter for: Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;
    invoke-static {v12}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$000(Lcom/nuance/connect/internal/AddonServiceInternal;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/connect/internal/common/Addon;

    if-eqz v11, :cond_8

    iget-object v12, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    #getter for: Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;
    invoke-static {v12}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$000(Lcom/nuance/connect/internal/AddonServiceInternal;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nuance/connect/internal/common/Addon;

    iget-object v12, v12, Lcom/nuance/connect/internal/common/Addon;->id:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    #getter for: Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;
    invoke-static {v12}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$000(Lcom/nuance/connect/internal/AddonServiceInternal;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nuance/connect/internal/common/Addon;

    iput-object v9, v12, Lcom/nuance/connect/internal/common/Addon;->state:Ljava/lang/String;

    :cond_6
    iget-object v12, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    #getter for: Lcom/nuance/connect/internal/AddonServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v12}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$300(Lcom/nuance/connect/internal/AddonServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v12

    const-string v13, "com.nuance.connect.DATA_AVAILABLE"

    const-string v14, "com.nuance.connect.TYPE_ADDON_DATA"

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_0

    :cond_7
    iget-object v12, p0, Lcom/nuance/connect/internal/AddonServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AddonServiceInternal;

    #getter for: Lcom/nuance/connect/internal/AddonServiceInternal;->currentAddonDownloads:Ljava/util/Map;
    invoke-static {v12}, Lcom/nuance/connect/internal/AddonServiceInternal;->access$100(Lcom/nuance/connect/internal/AddonServiceInternal;)Ljava/util/Map;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    return-void
.end method
