.class public Lcom/nuance/connect/service/manager/MessageManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/MessageManager$1;,
        Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;
    }
.end annotation


# static fields
.field public static final COMMAND_FAMILY:Ljava/lang/String; = null

.field public static final COMMAND_GET_NEXT:Ljava/lang/String; = "getNext"

.field public static final COMMAND_VERSION:I = 0x3

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;


# instance fields
.field private lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->MESSAGE:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/MessageManager;->COMMAND_FAMILY:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/manager/MessageManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/MessageManager;->MANAGER_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_RETRIEVE_MESSAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/MessageManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->version:I

    sget-object v0, Lcom/nuance/connect/service/manager/MessageManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/manager/MessageManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getNext"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    return-void
.end method

.method private doNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "com.nuance.swype.input.MessagesActivity"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    const-string v2, "UPGRADE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "com.nuance.swype.input.Upgrade"

    :cond_0
    :goto_0
    new-instance v2, Lcom/nuance/connect/util/StatusBarNotification$Builder;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    invoke-virtual {v2, v0}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setAction(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setMessage(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setTarget(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setUrl(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setExtras(Landroid/os/Bundle;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/connect/util/StatusBarNotification;

    return-void

    :cond_1
    const-string v2, "PRIVACY"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "com.nuance.swype.input.DisplaySettings"

    const-string v2, "DEFAULT_KEY"

    const-string v3, "PRIVACY"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "SETTINGS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "com.nuance.swype.input.DisplaySettings"

    goto :goto_0

    :cond_3
    const-string v2, "SETTINGS_CONNECT"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "com.nuance.swype.input.DisplaySettings"

    const-string v2, "DEFAULT_KEY"

    const-string v3, "CONNECT"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "SETTINGS_UPGRADE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "com.nuance.swype.input.DisplaySettings"

    const-string v2, "DEFAULT_KEY"

    const-string v3, "UPDATES"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 0

    return-void
.end method

.method private messageFromResponse(Lcom/nuance/connect/service/comm/Response;)Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;
    .locals 14

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v12, "38"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v12, "39"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v12, "41"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/nuance/connect/service/manager/MessageManager;->translateTargetId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v12, "42"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v12, "11"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p1, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    new-instance v0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v8}, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    Message=["

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "] messageId=["

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "]"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "url["

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "]"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :try_start_0
    iget-object v5, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v6, "40"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONArray;

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, v0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->modes:[I

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v10, v5, :cond_1

    iget-object v5, v0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->modes:[I

    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->modes:[I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v9

    iget-object v5, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private processAckMessageResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_RETRIEVE_MESSAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->modes:[I

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->modes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->modes:[I

    aget v1, v2, v0

    packed-switch v1, :pswitch_data_0

    :goto_2
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DISPLAY_MESSAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v4, v4, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->subject:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processAckMessageResponse lastMessage.url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v4, v4, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->subject:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v3, v3, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->target:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v4, v4, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->url:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/nuance/connect/service/manager/MessageManager;->doNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/MessageManager;->savePreferences()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1fe
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processMessageResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Inbox message handling functionality removed."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private processNextMessageResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Received Message Response from Server"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_RETRIEVE_MESSAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->preProcessResponse(Lcom/nuance/connect/service/comm/Response;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/MessageManager;->messageFromResponse(Lcom/nuance/connect/service/comm/Response;)Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->messageId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/MessageManager;->lastMessage:Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->messageId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/MessageManager;->ackMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private savePreferences()V
    .locals 0

    return-void
.end method

.method private translateTargetId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x1fd

    const-string v1, "NONE"

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v1, "NONE"

    :goto_1
    return-object v1

    :pswitch_1
    const-string v1, "UPGRADE"

    goto :goto_1

    :pswitch_2
    const-string v1, "PRIVACY"

    goto :goto_1

    :pswitch_3
    const-string v1, "URL"

    goto :goto_1

    :pswitch_4
    const-string v1, "SETTINGS"

    goto :goto_1

    :pswitch_5
    const-string v1, "SETTINGS_CONNECT"

    goto :goto_1

    :pswitch_6
    const-string v1, "SETTINGS_UPGRADE"

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1fa
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public ackMessage(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Attempting to acknowledge a null message"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "42"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ack"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/MessageManager;->loadPreferences()V

    goto :goto_0
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/MessageManager;->savePreferences()V

    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->destroy()V

    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/nuance/connect/internal/common/ManagerService;->MESSAGE:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v5}, Lcom/nuance/connect/internal/common/ManagerService;->getDependencies()[Lcom/nuance/connect/internal/common/ManagerService;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getMessage(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "11"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "42"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "get"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/MessageManager;->loadPreferences()V

    return-void
.end method

.method public getNextMessage()V
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "11"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "getNext"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/MessageManager;->loadPreferences()V

    return-void
.end method

.method public init()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/MessageManager;->loadPreferences()V

    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/nuance/connect/service/manager/MessageManager$1;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "MessageManager.onHandleMessage(MESSAGE_COMMAND_RETRIEVE_MESSAGE)"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/MessageManager;->getNextMessage()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/MessageManager;->processMessageResponse(Lcom/nuance/connect/service/comm/Response;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getNext"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/MessageManager;->processNextMessageResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/MessageManager;->processAckMessageResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/MessageManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "unknown command sent to MessageManager"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public start()V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    return-void
.end method
