.class public Lcom/nuance/connect/service/manager/ManagerRegistry;
.super Ljava/lang/Object;
.source "ManagerRegistry.java"


# instance fields
.field private allManagersStarted:Z

.field private client:Lcom/nuance/connect/service/ConnectClient;

.field private currentlyProcessing:Z

.field private idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final managers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/service/manager/interfaces/Manager;",
            ">;"
        }
    .end annotation
.end field

.field private final messageHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;",
            ">;>;"
        }
    .end annotation
.end field

.field startOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nuance/connect/service/manager/interfaces/Manager;",
            ">;"
        }
    .end annotation
.end field

.field private validRegistry:Z

.field private valueListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    new-instance v0, Lcom/nuance/connect/service/manager/ManagerRegistry$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/ManagerRegistry$1;-><init>(Lcom/nuance/connect/service/manager/ManagerRegistry;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->startOrderComparator:Ljava/util/Comparator;

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-class v1, Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->allManagersStarted:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    new-instance v0, Lcom/nuance/connect/service/manager/ManagerRegistry$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/ManagerRegistry$2;-><init>(Lcom/nuance/connect/service/manager/ManagerRegistry;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->valueListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/ManagerRegistry;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->checkIdle()V

    return-void
.end method

.method private add(Lcom/nuance/connect/service/manager/interfaces/Manager;)Z
    .locals 4

    invoke-interface {p1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManagerRegistry.add(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->isRegistered(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getIdleProperty()Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->valueListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->addListener(Lcom/nuance/connect/internal/Property$ValueListener;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private addManager(Ljava/lang/String;)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->isRegistered(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    sget-object v7, Lcom/nuance/connect/service/manager/ConfigurationManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v6, Lcom/nuance/connect/service/manager/ConfigurationManager;

    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/ConfigurationManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    :goto_1
    if-eqz v6, :cond_f

    invoke-direct {p0, v6}, Lcom/nuance/connect/service/manager/ManagerRegistry;->add(Lcom/nuance/connect/service/manager/interfaces/Manager;)Z

    invoke-interface {v6}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getDependencies()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    move-object v1, v3

    array-length v5, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_e

    aget-object v2, v1, v4

    invoke-direct {p0, v2}, Lcom/nuance/connect/service/manager/ManagerRegistry;->addManager(Ljava/lang/String;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    sget-object v7, Lcom/nuance/connect/service/manager/DeviceManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v6, Lcom/nuance/connect/service/manager/DeviceManager;

    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/DeviceManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/nuance/connect/service/manager/SessionManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v6, Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/SessionManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto :goto_1

    :cond_3
    sget-object v7, Lcom/nuance/connect/service/manager/LanguageManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v6, Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/LanguageManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto :goto_1

    :cond_4
    sget-object v7, Lcom/nuance/connect/service/manager/AccountManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v6, Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/AccountManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto :goto_1

    :cond_5
    sget-object v7, Lcom/nuance/connect/service/manager/AddonManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v6, Lcom/nuance/connect/service/manager/AddonManager;

    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/AddonManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto :goto_1

    :cond_6
    sget-object v7, Lcom/nuance/connect/service/manager/ReportingManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v6, Lcom/nuance/connect/service/manager/ReportingManager;

    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/ReportingManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto :goto_1

    :cond_7
    sget-object v7, Lcom/nuance/connect/service/manager/MessageManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v6, Lcom/nuance/connect/service/manager/MessageManager;

    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/MessageManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto/16 :goto_1

    :cond_8
    sget-object v7, Lcom/nuance/connect/service/manager/UpgradeManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v6, Lcom/nuance/connect/service/manager/UpgradeManager;

    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/UpgradeManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto/16 :goto_1

    :cond_9
    sget-object v7, Lcom/nuance/connect/service/manager/DlmSyncManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    new-instance v6, Lcom/nuance/connect/service/manager/DlmSyncManager;

    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/DlmSyncManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto/16 :goto_1

    :cond_a
    sget-object v7, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v6, Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/CategoryManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto/16 :goto_1

    :cond_b
    sget-object v7, Lcom/nuance/connect/service/manager/ResourcesManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    new-instance v6, Lcom/nuance/connect/service/manager/ResourcesManager;

    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/ResourcesManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto/16 :goto_1

    :cond_c
    sget-object v7, Lcom/nuance/connect/service/manager/DocumentManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    new-instance v6, Lcom/nuance/connect/service/manager/DocumentManager;

    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/connect/service/manager/DocumentManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    goto/16 :goto_1

    :cond_d
    iget-object v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown manager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    const/4 v0, 0x1

    :cond_f
    move v7, v0

    goto/16 :goto_0
.end method

.method private calculateSortOrder()V
    .locals 5

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "calculateSortOrder()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->walkDependencyTree(Lcom/nuance/connect/service/manager/interfaces/Manager;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->startOrderComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "final order()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getDependentCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private checkIdle()V
    .locals 6

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->allStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getIdleProperty()Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v3, v4, v5}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->setValue(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v3, v4, v5}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->setValue(Ljava/lang/Boolean;Lcom/nuance/connect/internal/Property$Source;)V

    :cond_2
    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIdle started="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->allStarted()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " idle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    invoke-virtual {v5}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    return-void
.end method

.method private find(Ljava/lang/String;)I
    .locals 4

    const/4 v2, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isRegistered(Ljava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private registerMessages(Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;[I)V
    .locals 7

    iget-object v4, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RegisterMessages() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    iget-object v4, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private walkDependencyTree(Lcom/nuance/connect/service/manager/interfaces/Manager;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->incrementDependentCount()V

    invoke-interface {p1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getDependencies()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nuance/connect/service/manager/ManagerRegistry;->walkDependencyTree(Lcom/nuance/connect/service/manager/interfaces/Manager;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;)Z
    .locals 4

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addService("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/nuance/connect/internal/common/ManagerService;->managerForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->addManager(Ljava/lang/String;)Z

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public allStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->allManagersStarted:Z

    return v0
.end method

.method public complete()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ManagerRegistry.complete() Currently: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] valid: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "ManagerRegistry.complete(): init happening"

    invoke-interface {v3, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->init()V

    instance-of v3, v1, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;

    invoke-interface {v3}, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;->getMessageIDs()[I

    move-result-object v2

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;

    invoke-direct {p0, v1, v2}, Lcom/nuance/connect/service/manager/ManagerRegistry;->registerMessages(Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;[I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->calculateSortOrder()V

    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    move v3, v5

    goto :goto_0
.end method

.method public deregister()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->deregister()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->rebind()Z

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->destroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchReceivedMessage(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)V
    .locals 6

    iget-object v5, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/service/manager/interfaces/Manager;

    instance-of v5, v3, Lcom/nuance/connect/service/manager/interfaces/CommandManager;

    if-eqz v5, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/CommandManager;

    invoke-interface {v0}, Lcom/nuance/connect/service/manager/interfaces/CommandManager;->getRealTimeSubscriptions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, p3}, Lcom/nuance/connect/service/manager/interfaces/CommandManager;->onResponse(Lcom/nuance/connect/service/comm/Response;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getIdleProperty()Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->idle:Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    return-object v0
.end method

.method public getManagerReference(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;
    .locals 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/ManagerRegistry;->find(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManagerReferenceByClass(Ljava/lang/String;)Lcom/nuance/connect/service/manager/interfaces/Manager;
    .locals 3

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNextPendingManager()Lcom/nuance/connect/service/manager/interfaces/Manager;
    .locals 5

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    if-nez v3, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v3, v4, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->allManagersStarted:Z

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->checkIdle()V

    move-object v1, v2

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;->onHandleMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCurrentlyProcessing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    return v0
.end method

.method public postStart()V
    .locals 3

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->postStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public postUpgrade()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->postUpgrade()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public prepareForUpgrade()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->prepareForUpgrade()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public rebind()Z
    .locals 3

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-interface {v1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->rebind()V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setup(Lcom/nuance/connect/service/ConnectClient;Z)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->client:Lcom/nuance/connect/service/ConnectClient;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->currentlyProcessing:Z

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->validRegistry:Z

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->allManagersStarted:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
