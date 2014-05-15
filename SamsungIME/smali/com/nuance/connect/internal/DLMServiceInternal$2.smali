.class Lcom/nuance/connect/internal/DLMServiceInternal$2;
.super Ljava/lang/Object;
.source "DLMServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/DLMServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/DLMServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DLMServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMServiceInternal$2;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    const-string v0, "DLMHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    invoke-static {}, Lcom/nuance/connect/internal/DLMServiceInternal;->access$300()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/nuance/connect/internal/DLMServiceInternal;->access$300()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/nuance/connect/internal/DLMServiceInternal;->access$300()[Lcom/nuance/connect/internal/common/InternalMessages;

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
    .locals 8

    sget-object v6, Lcom/nuance/connect/internal/DLMServiceInternal$3;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-static {v7}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/nuance/connect/internal/DLMServiceInternal$2;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    #getter for: Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v6}, Lcom/nuance/connect/internal/DLMServiceInternal;->access$000(Lcom/nuance/connect/internal/DLMServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v6

    const-string v7, "MESSAGE_HOST_PROCESS_DLM_EVENTS"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "DLM_EVENT_FILE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DLM_EVENT_CATEGORY"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v6, "DLM_EVENT_ACK"

    sget-object v7, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_DLM_EVENTS_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v7}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v6, "IDENTIFIER"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/nuance/connect/internal/DLMServiceInternal$2;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    invoke-virtual {v6, v2, v5, v0, v3}, Lcom/nuance/connect/internal/DLMServiceInternal;->recordDLMRecordset(ILjava/lang/String;ILjava/lang/String;)Z

    iget-object v6, p0, Lcom/nuance/connect/internal/DLMServiceInternal$2;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    invoke-virtual {v6, v2}, Lcom/nuance/connect/internal/DLMServiceInternal;->processDLMCategory(I)V

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/nuance/connect/internal/DLMServiceInternal$2;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    #getter for: Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v6}, Lcom/nuance/connect/internal/DLMServiceInternal;->access$000(Lcom/nuance/connect/internal/DLMServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v6

    const-string v7, "MESSAGE_HOST_PROCESS_DLM_DELETE_CATEGORY"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "DLM_DELETE_CAETEGORY"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v6, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "DLM_EVENT_ACK"

    sget-object v7, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_CATEGORY_DELETE_CATEGORY_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v7}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcom/nuance/connect/internal/DLMServiceInternal$2;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    invoke-virtual {v6, v2, v4, v0}, Lcom/nuance/connect/internal/DLMServiceInternal;->recordDLMDeleteCategory(III)Z

    iget-object v6, p0, Lcom/nuance/connect/internal/DLMServiceInternal$2;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    invoke-virtual {v6, v2}, Lcom/nuance/connect/internal/DLMServiceInternal;->processDLMCategory(I)V

    goto :goto_0

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
