.class Lcom/nuance/connect/internal/ReportingServiceInternal$1;
.super Ljava/lang/Object;
.source "ReportingServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ReportingServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ReportingServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    const-string v0, "ReportingHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$400()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$400()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$400()[Lcom/nuance/connect/internal/common/InternalMessages;

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
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/nuance/connect/internal/ReportingServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ReportingServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$000(Lcom/nuance/connect/internal/ReportingServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "handleMessage(MESSAGE_HOST_GET_USAGE_STATUS)"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ReportingServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v1}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$200(Lcom/nuance/connect/internal/ReportingServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_REPORTING_USAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v3, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    #calls: Lcom/nuance/connect/internal/ReportingServiceInternal;->getUsageCollectionStatus()Z
    invoke-static {v3}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$100(Lcom/nuance/connect/internal/ReportingServiceInternal;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3, v4, v4}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ReportingServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$000(Lcom/nuance/connect/internal/ReportingServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "handleMessage(MESSAGE_HOST_GET_STATISTICS_STATUS)"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ReportingServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v1}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$200(Lcom/nuance/connect/internal/ReportingServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_REPORTING_STATISTICS:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v3, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    #calls: Lcom/nuance/connect/internal/ReportingServiceInternal;->getStatisticsCollectionStatus()Z
    invoke-static {v3}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$300(Lcom/nuance/connect/internal/ReportingServiceInternal;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3, v4, v4}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ReportingServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$000(Lcom/nuance/connect/internal/ReportingServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "handleMessage(MESSAGE_HOST_SET_ALLOWED_REPORTING_METRICS)"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    return-void
.end method
