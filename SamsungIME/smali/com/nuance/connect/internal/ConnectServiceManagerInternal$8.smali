.class Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;
.super Ljava/lang/Object;
.source "ConnectServiceManagerInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBound()V
    .locals 5

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    #calls: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->sendConnectConfig()V
    invoke-static {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$300(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ENABLE_DATA_CONNECTION"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "HANDLER_LIST"

    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    #getter for: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->handlerRegistry:Lcom/nuance/connect/internal/HandlerRegistry;
    invoke-static {v3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$600(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/HandlerRegistry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/HandlerRegistry;->getRegisteredHandlers()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SERVICES_LIST"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    #getter for: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$700(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v4, ","

    invoke-static {v3, v4}, Lcom/nuance/connect/util/StringUtils;->listToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    iget-object v2, v2, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->hostInterface:Lcom/nuance/connect/host/service/HostInterface;

    sget-object v3, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-interface {v2, v3}, Lcom/nuance/connect/host/service/HostInterface;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/BuildSettings;

    const-string v2, "DEVELOPER_LOG_ENABLED"

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->isDeveloperLogEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_REGISTER_CLIENT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_START_IMMEDIDATELY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v2, v3}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    return-void
.end method

.method public onUnbound()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    #getter for: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->mHandler:Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$500(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;->stop()V

    return-void
.end method
