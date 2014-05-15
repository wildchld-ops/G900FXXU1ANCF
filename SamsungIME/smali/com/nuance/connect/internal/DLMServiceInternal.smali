.class Lcom/nuance/connect/internal/DLMServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;
.source "DLMServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/api/DLMService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/DLMServiceInternal$3;
    }
.end annotation


# static fields
.field private static final BATCH_SIZE:I = 0x3e8

.field public static final DLM_EVENT_QUEUE_PREF:Ljava/lang/String; = "DLM_EVENT_QUEUE_DATA"

.field private static DLM_TYPE:Ljava/lang/String; = null

.field private static final DLM_TYPE_DELETE_CATEGORY:I = 0x2

.field private static final DLM_TYPE_RECORDSET:I = 0x1

.field private static final LOCATION_UPDATE_INTERVAL:J = 0x1L

.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;


# instance fields
.field private allDlmYielding:Z

.field private backupCategory:I

.field private backupEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private currentAppName:Ljava/lang/String;

.field private currentInputType:I

.field private currentLocale:Ljava/lang/String;

.field private currentLocation:Ljava/lang/String;

.field private dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

.field private dlmUserEnabled:Z

.field private dlmYielding:Landroid/util/SparseBooleanArray;

.field private eventCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/connect/api/DLMService$DlmEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private locationListener:Lcom/nuance/connect/location/SwypeLocationListener;

.field private locationManager:Lcom/nuance/connect/location/SwypeLocationManager;

.field private locationSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private performingBackup:Z

.field private updateLocationLater:Z

.field private updateLocationMilliseconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "DLM_TYPE"

    sput-object v0, Lcom/nuance/connect/internal/DLMServiceInternal;->DLM_TYPE:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_PROCESS_DLM_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_PROCESS_DLM_DELETE_CATEGORY:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/DLMServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    sget-object v2, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    iput-boolean v4, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->updateLocationLater:Z

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->updateLocationMilliseconds:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmUserEnabled:Z

    iput v4, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->backupCategory:I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->eventCallbacks:Landroid/util/SparseArray;

    iput-boolean v4, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->allDlmYielding:Z

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    new-instance v2, Lcom/nuance/connect/internal/DLMServiceInternal$1;

    invoke-direct {v2, p0}, Lcom/nuance/connect/internal/DLMServiceInternal$1;-><init>(Lcom/nuance/connect/internal/DLMServiceInternal;)V

    iput-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationListener:Lcom/nuance/connect/location/SwypeLocationListener;

    new-instance v2, Lcom/nuance/connect/internal/DLMServiceInternal$2;

    invoke-direct {v2, p0}, Lcom/nuance/connect/internal/DLMServiceInternal$2;-><init>(Lcom/nuance/connect/internal/DLMServiceInternal;)V

    iput-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v3, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v1}, Lcom/nuance/connect/host/service/BuildSettings;->getLocationLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/UserSettings;->isDlmSyncEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmUserEnabled:Z

    new-instance v2, Lcom/nuance/connect/location/SwypeLocationManager;

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/nuance/connect/location/SwypeLocationManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationManager:Lcom/nuance/connect/location/SwypeLocationManager;

    new-instance v2, Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v3

    const-string v4, "DLM_EVENT_QUEUE_DATA"

    invoke-direct {v2, v3, v4}, Lcom/nuance/connect/util/InstallMetadata;-><init>(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/DLMServiceInternal;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/DLMServiceInternal;Lcom/nuance/connect/location/SwypeLocation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/DLMServiceInternal;->processLocationUpate(Lcom/nuance/connect/location/SwypeLocation;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/DLMServiceInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMServiceInternal;->getLocationFrequencyUpdate()V

    return-void
.end method

.method static synthetic access$300()[Lcom/nuance/connect/internal/common/InternalMessages;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/DLMServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "dlm service unable to delete file."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private dlmSyncAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmUserEnabled:Z

    return v0
.end method

.method private enableLocation(Z)V
    .locals 5

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/UserSettings;->isDataCollectionAccepted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationManager:Lcom/nuance/connect/location/SwypeLocationManager;

    invoke-virtual {v2}, Lcom/nuance/connect/location/SwypeLocationManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationManager:Lcom/nuance/connect/location/SwypeLocationManager;

    invoke-virtual {v2}, Lcom/nuance/connect/location/SwypeLocationManager;->allowedPassive()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->PASSIVE:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    :goto_0
    new-instance v2, Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-direct {v2, v1}, Lcom/nuance/connect/location/SwypeLocationSettings;-><init>(Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;)V

    iput-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nuance/connect/location/SwypeLocationSettings;->setGeocode(Z)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Lcom/nuance/connect/location/SwypeLocationSettings;->addType(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Lcom/nuance/connect/location/SwypeLocationSettings;->addType(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationManager:Lcom/nuance/connect/location/SwypeLocationManager;

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationListener:Lcom/nuance/connect/location/SwypeLocationListener;

    iget-object v4, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-virtual {v2, v3, v4}, Lcom/nuance/connect/location/SwypeLocationManager;->registerListener(Lcom/nuance/connect/location/SwypeLocationListener;Lcom/nuance/connect/location/SwypeLocationSettings;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v1, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->GET_LOCATION:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationManager:Lcom/nuance/connect/location/SwypeLocationManager;

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->locationListener:Lcom/nuance/connect/location/SwypeLocationListener;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/location/SwypeLocationManager;->unregisterListener(Lcom/nuance/connect/location/SwypeLocationListener;)Z

    const-string v2, ""

    iput-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->currentLocation:Ljava/lang/String;

    goto :goto_1
.end method

.method private getLocationFrequencyUpdate()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->updateLocationLater:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->updateLocationMilliseconds:J

    return-void
.end method

.method private onDlmEvent(ILjava/lang/String;J)V
    .locals 3

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmSyncAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Error writing DLM event, as its empty or null."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->updateLocationLater:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-wide v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->updateLocationMilliseconds:J

    cmp-long v1, v1, p3

    if-gtz v1, :cond_4

    iget-boolean v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmUserEnabled:Z

    invoke-direct {p0, v1}, Lcom/nuance/connect/internal/DLMServiceInternal;->enableLocation(Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->updateLocationLater:Z

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->updateLocationMilliseconds:J

    :cond_4
    iget-boolean v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->performingBackup:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->backupEvents:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->backupEvents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMServiceInternal;->sendDlmBackupBatch()V

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DLM_EVENT_DATA"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DLM_EVENT_TIMESTAMP"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DLM_EVENT_APPNAME"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->currentAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DLM_EVENT_LOCALE"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->currentLocale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DLM_EVENT_LOCATION"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->currentLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DLM_EVENT_INPUT_TYPE"

    iget v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->currentInputType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SEND_DLM_EVENT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onHighPriorityDlmEvent(ILjava/lang/String;J)V
    .locals 3

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmSyncAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->performingBackup:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->backupEvents:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DLM_EVENT_DATA"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DLM_EVENT_APPNAME"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->currentAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DLM_EVENT_TIMESTAMP"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SEND_HIGH_PRIORITY_EVENT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private processFile(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DLMServiceInternal.processFile("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_0
    new-instance v4, Ljava/util/Scanner;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error finding file for category install: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing(2) file for category install: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private processLocationUpate(Lcom/nuance/connect/location/SwypeLocation;)V
    .locals 6

    const-string v2, ""

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocation;->getLocation()Landroid/location/Location;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "LONG"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "LAT"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "ACC"

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "CC"

    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocation;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AA"

    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocation;->getAdminArea()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "LY"

    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocation;->getLocality()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processLocationUpate() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->currentLocation:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private sendDlmBackupBatch()V
    .locals 3

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmSyncAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DLM_EVENT_DATA"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->backupEvents:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "DLM_EVENT_CATEGORY"

    iget v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->backupCategory:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DLM_BACKUP_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->backupEvents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    goto :goto_0
.end method


# virtual methods
.method backupDlm(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/DLMServiceInternal;->onBeginBackup(I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/api/DLMService$DlmEventCallback;

    invoke-interface {v1}, Lcom/nuance/connect/api/DLMService$DlmEventCallback;->backupDlm()Z

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/DLMServiceInternal;->onEndBackup()V

    :cond_0
    return v0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBeginBackup(I)V
    .locals 3

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->backupEvents:Ljava/util/LinkedList;

    iput p1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->backupCategory:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->performingBackup:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DLM_EVENT_CATEGORY"

    iget v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->backupCategory:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DLM_BACKUP_BEGIN:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    return-void
.end method

.method public onDlmEvent(ILjava/lang/String;JZ)V
    .locals 0

    if-eqz p5, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/connect/internal/DLMServiceInternal;->onHighPriorityDlmEvent(ILjava/lang/String;J)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/connect/internal/DLMServiceInternal;->onDlmEvent(ILjava/lang/String;J)V

    goto :goto_0
.end method

.method public onEndBackup()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLMHandler.onEndBackup() backupCategory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->backupCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMServiceInternal;->sendDlmBackupBatch()V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DLM_BACKUP_END:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->performingBackup:Z

    return-void
.end method

.method public onReset(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    return-void
.end method

.method processDLMCategory(I)V
    .locals 6

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processDLMCategory("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "DLM_EVENT_CATEGORY"

    invoke-virtual {v3, v4, p1}, Lcom/nuance/connect/util/InstallMetadata;->listFromPropEquals(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-boolean v3, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->allDlmYielding:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3, v1}, Lcom/nuance/connect/util/InstallMetadata;->isInstalling(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    sget-object v4, Lcom/nuance/connect/internal/DLMServiceInternal;->DLM_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, v1}, Lcom/nuance/connect/internal/DLMServiceInternal;->processDlmEvents(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, v1}, Lcom/nuance/connect/internal/DLMServiceInternal;->processDlmDelete(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method processDlmDelete(ILjava/lang/String;)V
    .locals 8

    iget-boolean v5, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->allDlmYielding:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v5, v6, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processing delete for core="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of identifier="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but currently yielding"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v5, p2}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v6, 0x1

    invoke-virtual {v5, p2, v6}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "DLM_EVENT_CATEGORY"

    invoke-virtual {v5, p2, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v5, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v5, p2, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "DLM_EVENT_ACK"

    invoke-virtual {v5, p2, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v5, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/connect/api/DLMService$DlmEventCallback;

    invoke-interface {v5, v3}, Lcom/nuance/connect/api/DLMService$DlmEventCallback;->processDlmDelete(I)Z

    move-result v4

    iget-object v5, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v5, p2}, Lcom/nuance/connect/util/InstallMetadata;->deletePackage(Ljava/lang/String;)Z

    iget-object v5, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v5}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v5, "DEFAULT_KEY"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "DLM_DELETE_CAETEGORY"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v5}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v5

    invoke-static {v0}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method processDlmEvents(ILjava/lang/String;)V
    .locals 11

    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DLMServiceInternal.processDlmEvents("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->allDlmYielding:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-ne v8, v9, :cond_2

    :cond_0
    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processing events for core="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " of file="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but currently yielding"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v8, p2}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v9, "DLM_EVENT_CATEGORY"

    invoke-virtual {v8, p2, v9}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v9, "IDENTIFIER"

    invoke-virtual {v8, p2, v9}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v9, "DLM_EVENT_ACK"

    invoke-virtual {v8, p2, v9}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v4, p1, :cond_3

    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DLMServiceInternal.processDlmEvents processing events for core="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " of file="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but categories don\'t match"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v9, 0x1

    invoke-virtual {v8, p2, v9}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/DLMServiceInternal;->processFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processing events for file="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but no events so cleaning it out"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v8, p2}, Lcom/nuance/connect/util/InstallMetadata;->deletePackage(Ljava/lang/String;)Z

    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v8}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/DLMServiceInternal;->deleteFile(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/connect/api/DLMService$DlmEventCallback;

    invoke-interface {v8, v2}, Lcom/nuance/connect/api/DLMService$DlmEventCallback;->processEvent(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    :goto_2
    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v8, p2}, Lcom/nuance/connect/util/InstallMetadata;->deletePackage(Ljava/lang/String;)Z

    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v8}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/DLMServiceInternal;->deleteFile(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v8, "DLM_EVENT_CATEGORY"

    invoke-virtual {v1, v8, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "DLM_EVENT_COUNT"

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "IDENTIFIER"

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v8}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v8

    invoke-static {v0}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v9

    invoke-interface {v8, v9, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method recordDLMDeleteCategory(III)Z
    .locals 5

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLMServiceInternal.recordDLMDeleteCategory("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEL|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/DLMServiceInternal;->DLM_TYPE:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DLM_EVENT_CATEGORY"

    invoke-virtual {v1, v2, v3, p1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v1, v2, v3, p2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DLM_EVENT_ACK"

    invoke-virtual {v1, v2, v3, p3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    const/4 v1, 0x1

    return v1
.end method

.method recordDLMRecordset(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLMServiceInternal.recordDLMRecordset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    sget-object v1, Lcom/nuance/connect/internal/DLMServiceInternal;->DLM_TYPE:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, p2, v1, p1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "IDENTIFIER"

    invoke-virtual {v0, p2, v1, p4}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "DLM_EVENT_FILE"

    invoke-virtual {v0, p2, v1, p2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "DLM_EVENT_ACK"

    invoke-virtual {v0, p2, v1, p3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    return v3
.end method

.method public registerDlmCallback(ILcom/nuance/connect/api/DLMService$DlmEventCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->allDlmYielding:Z

    return-void
.end method

.method public resume(I)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/DLMServiceInternal;->processDLMCategory(I)V

    return-void
.end method

.method public unregisterDlmCallback(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v1, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_SYSTEM_DATA:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/HostSystemData;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/HostSystemData;->getCurrentApplicationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->currentAppName:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v1, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_SYSTEM_DATA:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/HostSystemData;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/HostSystemData;->getCurrentFieldInfo()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->currentInputType:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->currentLocale:Ljava/lang/String;

    return-void
.end method

.method public updateLocation()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmUserEnabled:Z

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/DLMServiceInternal;->enableLocation(Z)V

    return-void
.end method

.method public yield()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->allDlmYielding:Z

    return-void
.end method

.method public yield(I)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMServiceInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return-void
.end method
