.class Lcom/nuance/connect/internal/ConfigServiceInternal$7;
.super Ljava/lang/Object;
.source "ConfigServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ConfigServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    const-string v0, "SwypeConfigurationHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    invoke-static {}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$900()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$900()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$900()[Lcom/nuance/connect/internal/common/InternalMessages;

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
    .locals 7

    iget-object v4, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v4}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v2

    sget-object v4, Lcom/nuance/connect/internal/ConfigServiceInternal$8;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v5, p2, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_OEM_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v5, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    sget-object v6, Lcom/nuance/connect/host/service/BuildSettings$Property;->OEM_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

    #calls: Lcom/nuance/connect/internal/ConfigServiceInternal;->getProperty(Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$600(Lcom/nuance/connect/internal/ConfigServiceInternal;Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendLanguageInfo()V

    iget-object v4, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendLocaleInfo()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v4}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v4

    sget-object v5, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v4, v5}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v3}, Lcom/nuance/connect/host/service/BuildSettings;->getCoreVersions()Landroid/util/SparseArray;

    move-result-object v0

    const-string v5, "PROP_CORE_ALPHA"

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "PROP_CORE_CHINESE"

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "PROP_CORE_JAPANESE"

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "PROP_CORE_KOREAN"

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CORE_VERSIONS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v2, v4, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_SDK_VERSION:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v5, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    sget-object v6, Lcom/nuance/connect/host/service/BuildSettings$Property;->VERSION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    #calls: Lcom/nuance/connect/internal/ConfigServiceInternal;->getProperty(Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$600(Lcom/nuance/connect/internal/ConfigServiceInternal;Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v4}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v4

    sget-object v5, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v4, v5}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/host/service/BuildSettings;

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_APPLICATION_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v3}, Lcom/nuance/connect/host/service/BuildSettings;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_5
    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CUSTOMER_STRING:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v5, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v5}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/connect/internal/AppSettings;->getCustomerString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v4, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v4}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v4

    sget-object v5, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v4, v5}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/host/service/BuildSettings;

    sget-object v5, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_LANGUAGES_FOR_CORES:Lcom/nuance/connect/internal/common/InternalMessages;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/nuance/connect/host/service/BuildSettings;->getLanguageCoreMap()Ljava/util/HashMap;

    move-result-object v4

    :goto_1
    invoke-interface {v2, v5, v4}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :pswitch_7
    iget-object v4, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DEFAULT_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->swyperId:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$702(Lcom/nuance/connect/internal/ConfigServiceInternal;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v4}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v4

    const-string v5, "com.nuance.connect.DATA_AVAILABLE"

    const-string v6, "com.nuance.connect.TYPE_SWYPER_ID"

    invoke-virtual {v4, v5, v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_0

    :pswitch_8
    iget-object v4, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DEFAULT_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->deviceId:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$802(Lcom/nuance/connect/internal/ConfigServiceInternal;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    #getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v4}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v4

    const-string v5, "com.nuance.connect.DATA_AVAILABLE"

    const-string v6, "com.nuance.connect.TYPE_DEVICE_ID"

    invoke-virtual {v4, v5, v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_0

    :pswitch_9
    iget-object v4, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    #calls: Lcom/nuance/connect/internal/ConfigServiceInternal;->sendConnectionConcurrentLimit()V
    invoke-static {v4}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$100(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v4, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    #calls: Lcom/nuance/connect/internal/ConfigServiceInternal;->sendDownloadIdleTimeout()V
    invoke-static {v4}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$200(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v4, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    #calls: Lcom/nuance/connect/internal/ConfigServiceInternal;->sendForegroundDataState()V
    invoke-static {v4}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$300(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v4, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    #calls: Lcom/nuance/connect/internal/ConfigServiceInternal;->sendBackgroundDataState()V
    invoke-static {v4}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    return-void
.end method
