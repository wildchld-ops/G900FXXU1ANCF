.class public Lcom/nuance/connect/service/manager/ConfigurationManager;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/Manager;
.implements Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/ConfigurationManager$1;
    }
.end annotation


# static fields
.field public static final MANAGER_NAME:Ljava/lang/String; = null

.field private static final PROP_APPLICATION_ID:Ljava/lang/String; = null

.field private static final PROP_BACKGROUND_DATA:Ljava/lang/String; = null

.field private static final PROP_BUILD_TYPE:Ljava/lang/String; = null

.field private static final PROP_CUSTOMER_STRING:Ljava/lang/String; = null

.field private static final PROP_FOREGROUND_DATA:Ljava/lang/String; = null

.field private static final PROP_LANGUAGE_CORE_MAP:Ljava/lang/String; = "language_core_map"

.field private static final PROP_OEM_ID:Ljava/lang/String;

.field private static final PROP_SDK_VERSION:Ljava/lang/String;

.field private static final PROP_STATISTICS_STATUS:Ljava/lang/String;

.field private static final PROP_USAGE_STATUS:Ljava/lang/String;

.field private static final REQUIRED_PROPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private client:Lcom/nuance/connect/service/ConnectClient;

.field private dependentCount:I

.field private idleProperty:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_STATISTICS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_STATISTICS_STATUS:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_USAGE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_USAGE_STATUS:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->OEM_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_OEM_ID:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BUILD_TYPE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_BUILD_TYPE:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->SDK_VERSION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_SDK_VERSION:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->APPLICATION_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_APPLICATION_ID:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CUSTOMER_STRING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_CUSTOMER_STRING:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->FOREGROUND_CONFIGURATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_FOREGROUND_DATA:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BACKGROUND_CONFIGURATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_BACKGROUND_DATA:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_FOREGROUND_DATA:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_BACKGROUND_DATA:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_OEM_ID:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_SDK_VERSION:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_APPLICATION_ID:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_CUSTOMER_STRING:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "language_core_map"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->REQUIRED_PROPS:Ljava/util/List;

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->CONFIG:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->MANAGER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->state:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->properties:Ljava/util/HashMap;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_REPORTING_STATISTICS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_REPORTING_USAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPDATE_CURRENT_LANGUAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_BUILD_TYPE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_OEM_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CORE_VERSIONS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_SDK_VERSION:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_APPLICATION_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CUSTOMER_STRING:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_LANGUAGES_FOR_CORES:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPDATE_CURRENT_LOCALE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CONNECTION_LIMIT:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_NETWORK_IDLE_TIMEOUT:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_BACKGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_FOREGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-class v1, Lcom/nuance/connect/service/manager/AbstractCommandManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->idleProperty:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    iput-object p1, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    return-void
.end method

.method private isPropertyReceived(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private managerStartComplete()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "managerStartComplete()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->state:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/manager/ConfigurationManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    return-void
.end method

.method private preloadProperty(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/ConnectClient;->getString(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private propertyReceived(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->properties:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/nuance/connect/service/manager/ConfigurationManager;->REQUIRED_PROPS:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->properties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " left: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    sget-object v1, Lcom/nuance/connect/service/manager/ConfigurationManager;->REQUIRED_PROPS:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->properties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/service/manager/ConfigurationManager;->REQUIRED_PROPS:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->managerStartComplete()V

    :cond_0
    return-void
.end method

.method private sendPropertyRequests()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_BACKGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_FOREGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CORE_VERSIONS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_SDK_VERSION:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LANGUAGES_FOR_CORES:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CONNECTION_LIMIT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    sget-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_APPLICATION_ID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->isPropertyReceived(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_APPLICATION_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :cond_0
    sget-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_CUSTOMER_STRING:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->isPropertyReceived(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CUSTOMER_STRING:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_NETWORK_IDLE_TIMEOUT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    return-void
.end method


# virtual methods
.method public delayFirstStart()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public deregister()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/nuance/connect/internal/common/ManagerService;->CONFIG:Lcom/nuance/connect/internal/common/ManagerService;

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

.method public getDependentCount()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->dependentCount:I

    return v0
.end method

.method public getIdleProperty()Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->idleProperty:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    return-object v0
.end method

.method public getManagerName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->MANAGER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->state:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    array-length v2, v2

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public incrementDependentCount()V
    .locals 1

    iget v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->dependentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->dependentCount:I

    return-void
.end method

.method public init()V
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_OEM_ID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->preloadProperty(Ljava/lang/String;)V

    sget-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_APPLICATION_ID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->preloadProperty(Ljava/lang/String;)V

    sget-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_CUSTOMER_STRING:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->preloadProperty(Ljava/lang/String;)V

    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 16

    const/4 v4, 0x0

    sget-object v12, Lcom/nuance/connect/service/manager/ConfigurationManager$1;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    invoke-static {v13}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    :goto_0
    return v4

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v13, "onHandleMessage(MESSAGE_CLIENT_UPDATE_CURRENT_LANGUAGE)"

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "DEFAULT_KEY"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "LANGUAGE_CATEGORY"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onHandleMessage(MESSAGE_CLIENT_UPDATE_CURRENT_LANGUAGE) Language: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] Code: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v12, v7, v8}, Lcom/nuance/connect/service/ConnectClient;->setCurrentLanguageInfo([I[I)V

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "DEFAULT_KEY"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onHandleMessage(MESSAGE_CLIENT_UPDATE_CURRENT_LOCALE) Locale: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "_"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    array-length v12, v11

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    new-instance v6, Ljava/util/Locale;

    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-direct {v6, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v12, v6}, Lcom/nuance/connect/service/ConnectClient;->setCurrentLocaleInfo(Ljava/util/Locale;)V

    :cond_2
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_3
    array-length v12, v11

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    new-instance v6, Ljava/util/Locale;

    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-direct {v6, v12, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    array-length v12, v11

    const/4 v13, 0x3

    if-ne v12, v13, :cond_1

    new-instance v6, Ljava/util/Locale;

    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x1

    aget-object v13, v11, v13

    const/4 v14, 0x2

    aget-object v14, v11, v14

    invoke-direct {v6, v12, v13, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v13, "MESSAGE_CLIENT_SET_LANGUAGES_FOR_CORES"

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "DEFAULT_KEY"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LANGUAGES_FOR_CORES:Lcom/nuance/connect/internal/common/InternalMessages;

    const/16 v14, 0x5dc

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHostDelayed(Lcom/nuance/connect/internal/common/InternalMessages;I)V

    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v12, v14}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Lcom/nuance/connect/service/ConnectClient;->setLanguageCoreMap(Ljava/util/HashMap;)V

    const-string v12, "language_core_map"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "DEFAULT_KEY"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_REPORTING_USAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    const/16 v14, 0x5dc

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHostDelayed(Lcom/nuance/connect/internal/common/InternalMessages;I)V

    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_USAGE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "DEFAULT_KEY"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    sget-object v12, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_USAGE_STATUS:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "DEFAULT_KEY"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_REPORTING_STATISTICS:Lcom/nuance/connect/internal/common/InternalMessages;

    const/16 v14, 0x5dc

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHostDelayed(Lcom/nuance/connect/internal/common/InternalMessages;I)V

    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_STATISTICS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "DEFAULT_KEY"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    sget-object v12, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_STATISTICS_STATUS:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v13, "onHandleMessage(MESSAGE_CLIENT_SET_CONNECTION_LIMIT)"

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "DEFAULT_KEY"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CONNECTION_LIMIT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v13, "onHandleMessage(MESSAGE_CLIENT_SET_BUILD_TYPE)"

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BUILD_TYPE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "DEFAULT_KEY"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    sget-object v12, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_BUILD_TYPE:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v13, "onHandleMessage(MESSAGE_CLIENT_SET_OEM_ID)"

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "DEFAULT_KEY"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v13, "onHandleMessage(MESSAGE_CLIENT_SET_OEM_ID) invalid OEM"

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_OEM_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    const/16 v14, 0x5dc

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHostDelayed(Lcom/nuance/connect/internal/common/InternalMessages;I)V

    :goto_5
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->OEM_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v12, v13, v10}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    sget-object v12, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_OEM_ID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->sendPropertyRequests()V

    goto :goto_5

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v13, "onHandleMessage(MESSAGE_CLIENT_SET_CORE_VERSIONS)"

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CORE_VERSION_ALPHA:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "PROP_CORE_ALPHA"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CORE_VERSION_CHINESE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "PROP_CORE_CHINESE"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CORE_VERSION_JAPANESE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "PROP_CORE_JAPANESE"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CORE_VERSION_KOREAN:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "PROP_CORE_KOREAN"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v13, "onHandleMessage(MESSAGE_CLIENT_SET_APPLICATION_ID)"

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->APPLICATION_ID:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "DEFAULT_KEY"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    sget-object v12, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_APPLICATION_ID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v13, "onHandleMessage(MESSAGE_CLIENT_SET_SDK_VERSION)"

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->SDK_VERSION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "DEFAULT_KEY"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    sget-object v12, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_SDK_VERSION:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v13, "onHandleMessage(MESSAGE_CLIENT_SET_CUSTOMER_STRING)"

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CUSTOMER_STRING:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "DEFAULT_KEY"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    sget-object v12, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_CUSTOMER_STRING:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v13, "onHandleMessage(MESSAGE_CLIENT_SET_NETWORK_IDLE_TIMEOUT)"

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "DEFAULT_KEY"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->NETWORK_TIMEOUT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Integer;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v13, "onHandleMessage(MESSAGE_CLIENT_SET_BACKGROUND_DATA)"

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "DEFAULT_KEY"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BACKGROUND_CONFIGURATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v12, v13, v1}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    sget-object v12, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BACKGROUND_CONFIGURATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v13, "onHandleMessage(MESSAGE_CLIENT_SET_FOREGROUND_DATA)"

    invoke-interface {v12, v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "DEFAULT_KEY"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v13, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->FOREGROUND_CONFIGURATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v12, v13, v3}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    sget-object v12, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->FOREGROUND_CONFIGURATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/nuance/connect/service/manager/ConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

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
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public postInit()V
    .locals 0

    return-void
.end method

.method public postStart()V
    .locals 0

    return-void
.end method

.method public postUpgrade()V
    .locals 0

    return-void
.end method

.method public prepareForUpgrade()V
    .locals 0

    return-void
.end method

.method public rebind()V
    .locals 0

    return-void
.end method

.method public restart()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "start()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->state:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v0, Lcom/nuance/connect/service/manager/ConfigurationManager;->PROP_OEM_ID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->isPropertyReceived(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ConfigurationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_OEM_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ConfigurationManager;->sendPropertyRequests()V

    goto :goto_0
.end method
