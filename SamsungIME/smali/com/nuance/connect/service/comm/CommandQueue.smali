.class public Lcom/nuance/connect/service/comm/CommandQueue;
.super Ljava/lang/Object;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;,
        Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;,
        Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;,
        Lcom/nuance/connect/service/comm/CommandQueue$PriorityTaskComparator;,
        Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;,
        Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;
    }
.end annotation


# static fields
.field private static final BACKDOWN_START:I = 0x0

.field private static final DEFAULT_DOWNLOAD_TIMEOUT_SECONDS:I = 0xa

.field private static final MAX_DELAY_SECONDS:I = 0xa8c0

.field private static final MESSAGE_CHECK_QUEUE:I = 0x3

.field private static final MESSAGE_LAST:I = 0x3

.field private static final MESSAGE_QUEUE_PAUSE:I = 0x1

.field private static final MESSAGE_QUEUE_RESUME:I = 0x2

.field private static final THREAD_POOL_MAX_THREADS:I = 0x6

.field private static final THREAD_POOL_THREADS:I = 0x3

.field private static final THREAD_POOL_TIMEOUT_SECONDS:I = 0x3c


# instance fields
.field private volatile active:Z

.field private final activeTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;

.field private volatile backdownCounter:I

.field private backdownDelay:I

.field private boolListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private broadcastResponseEnabled:Z

.field private final callback:Lcom/nuance/connect/service/comm/ConnectorCallback;

.field private final client:Lcom/nuance/connect/service/ConnectClient;

.field private final commandsInProgress:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/service/comm/Command;",
            ">;"
        }
    .end annotation
.end field

.field private concurrentThreadCount:I

.field private final connection:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;

.field private final connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

.field private defaultDelaySeconds:I

.field private delayTimeoutSeconds:I

.field private volatile deviceId:Ljava/lang/String;

.field private final executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

.field private volatile goodConnection:Z

.field private volatile hasConnectivity:Z

.field private final httpConnector:Lcom/nuance/connect/service/comm/HttpConnector;

.field private intListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final mainHandler:Landroid/os/Handler;

.field private mqttEnabled:Z

.field private networkListener:Lcom/nuance/connect/system/NetworkListener;

.field private final pendingQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;",
            ">;"
        }
    .end annotation
.end field

.field rejectedHandler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private volatile requestKey:Ljava/lang/String;

.field responseListener:Lcom/nuance/connect/service/ConnectClient$ResponseListener;

.field private volatile sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 10

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    iput v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownCounter:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->defaultDelaySeconds:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->delayTimeoutSeconds:I

    iput v2, p0, Lcom/nuance/connect/service/comm/CommandQueue;->concurrentThreadCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->commandsInProgress:Ljava/util/Set;

    iput-boolean v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->goodConnection:Z

    iput-boolean v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->mqttEnabled:Z

    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue$1;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue$2;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->boolListener:Lcom/nuance/connect/internal/Property$ValueListener;

    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue$3;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->networkListener:Lcom/nuance/connect/system/NetworkListener;

    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue$4;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue$4;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->rejectedHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue$5;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue$5;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connection:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;

    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue$6;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue$6;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->callback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    new-instance v0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v0, v1}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->NETWORK_TIMEOUT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CONNECTION_LIMIT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->HTTP_ANALYTICS_TIME:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->MQTT_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->boolListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BROADCAST_RESPONSE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->boolListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    invoke-static {}, Lcom/nuance/connect/service/security/RequestKey;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->requestKey:Ljava/lang/String;

    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    const/4 v3, 0x6

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0xb

    new-instance v8, Lcom/nuance/connect/service/comm/CommandQueue$PriorityTaskComparator;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/nuance/connect/service/comm/CommandQueue$PriorityTaskComparator;-><init>(Lcom/nuance/connect/service/comm/CommandQueue$1;)V

    invoke-direct {v7, v1, v8}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iget-object v8, p0, Lcom/nuance/connect/service/comm/CommandQueue;->rejectedHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    new-instance v0, Lcom/nuance/connect/service/comm/HttpConnector;

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connection:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->callback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/connect/service/comm/HttpConnector;-><init>(Lcom/nuance/connect/service/ConnectClient;Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;Lcom/nuance/connect/service/comm/ConnectorCallback;Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->httpConnector:Lcom/nuance/connect/service/comm/HttpConnector;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/comm/CommandQueue;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->defaultDelaySeconds:I

    return v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/connect/service/comm/CommandQueue;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->defaultDelaySeconds:I

    return p1
.end method

.method static synthetic access$1100(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/connect/service/comm/CommandQueue;Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/comm/CommandQueue;->processTransaction(Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/nuance/connect/service/comm/CommandQueue;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nuance/connect/service/comm/CommandQueue;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->active:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/nuance/connect/service/comm/CommandQueue;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->goodConnection:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/nuance/connect/service/comm/CommandQueue;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->goodConnection:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/nuance/connect/service/comm/CommandQueue;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownCounter:I

    return p1
.end method

.method static synthetic access$1902(Lcom/nuance/connect/service/comm/CommandQueue;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownDelay:I

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/nuance/connect/service/comm/CommandQueue;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->sessionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/nuance/connect/service/comm/CommandQueue;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->deviceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->requestKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/comm/CommandQueue;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->delayTimeoutSeconds:I

    return v0
.end method

.method static synthetic access$302(Lcom/nuance/connect/service/comm/CommandQueue;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->delayTimeoutSeconds:I

    return p1
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/comm/CommandQueue;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->concurrentThreadCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/nuance/connect/service/comm/CommandQueue;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->concurrentThreadCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/comm/CommandQueue;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->broadcastResponseEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/nuance/connect/service/comm/CommandQueue;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->broadcastResponseEnabled:Z

    return p1
.end method

.method static synthetic access$702(Lcom/nuance/connect/service/comm/CommandQueue;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->hasConnectivity:Z

    return p1
.end method

.method static synthetic access$800(Lcom/nuance/connect/service/comm/CommandQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->resetTimers()V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/connect/service/comm/CommandQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->processQueue()V

    return-void
.end method

.method private static fib(I)I
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x2

    if-gez p0, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v3, 0x3

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    if-gt p0, v5, :cond_1

    aget v2, v1, p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_1
    if-ge v0, p0, :cond_2

    aget v3, v1, v6

    aput v3, v1, v2

    aget v3, v1, v5

    aput v3, v1, v6

    aget v3, v1, v2

    aget v4, v1, v6

    add-int/2addr v3, v4

    aput v3, v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aget v2, v1, v5

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getBackdownDelay()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownDelay:I

    return v0
.end method

.method private incrementBackdownDelay()V
    .locals 4

    iget v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownCounter:I

    add-int/lit8 v2, v3, 0x1

    iget v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownCounter:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/nuance/connect/service/comm/CommandQueue;->fib(I)I

    move-result v1

    iget v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->defaultDelaySeconds:I

    mul-int v0, v1, v3

    const v3, 0xa8c0

    if-gt v0, v3, :cond_0

    iput v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownDelay:I

    iget v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownCounter:I

    :cond_0
    return-void
.end method

.method private isCommandInQueue(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue;->commandsInProgress:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/comm/Command;

    iget-object v2, v0, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private processQueue()V
    .locals 12

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processQueue size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; executor active threads="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v9}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; completed tasks="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v9}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->isOnline()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "not online... exiting"

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {v4}, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/service/comm/Transaction;

    move-result-object v5

    const/4 v1, 0x0

    invoke-interface {v5}, Lcom/nuance/connect/service/comm/Transaction;->requiresDeviceId()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->deviceId:Ljava/lang/String;

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v7}, Lcom/nuance/connect/service/ConnectClient;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->deviceId:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->deviceId:Ljava/lang/String;

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->deviceId:Ljava/lang/String;

    if-nez v7, :cond_2

    sget-object v7, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    sget-object v9, Lcom/nuance/connect/service/manager/DeviceManager;->REGISTRATION_COMMANDS:Ljava/util/List;

    invoke-direct {p0, v7, v9}, Lcom/nuance/connect/service/comm/CommandQueue;->isCommandInQueue(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "processQueue()  deviceId is null, no queued register device command found -- sending register request"

    invoke-interface {v7, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v9, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v7, v9}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :cond_2
    const/4 v1, 0x1

    :cond_3
    invoke-interface {v5}, Lcom/nuance/connect/service/comm/Transaction;->requiresSessionId()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->sessionId:Ljava/lang/String;

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v7}, Lcom/nuance/connect/service/ConnectClient;->getSessionId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->sessionId:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->sessionId:Ljava/lang/String;

    if-nez v7, :cond_5

    sget-object v7, Lcom/nuance/connect/service/manager/SessionManager;->COMMAND_FAMILY:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "create"

    aput-object v11, v9, v10

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/nuance/connect/service/comm/CommandQueue;->isCommandInQueue(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "processQueue()  sessionId is null, no queued create session command found -- sending session create request"

    invoke-interface {v7, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v9, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_CREATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v7, v9}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :cond_4
    const/4 v1, 0x1

    :cond_5
    invoke-interface {v5}, Lcom/nuance/connect/service/comm/Transaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v6

    if-nez v1, :cond_8

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v7}, Lcom/nuance/connect/service/ConnectClient;->getConnectivity()Lcom/nuance/connect/system/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/system/Connectivity;->getForegroundConfiguration()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v3

    sget-object v7, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    if-ne v6, v7, :cond_6

    invoke-virtual {v0}, Lcom/nuance/connect/system/Connectivity;->getBackgroundConfiguration()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v3

    :cond_6
    invoke-virtual {v0}, Lcom/nuance/connect/system/Connectivity;->getState()Lcom/nuance/connect/system/NetworkState;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-nez v1, :cond_8

    invoke-interface {v5}, Lcom/nuance/connect/service/comm/Transaction;->wifiOnly()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Lcom/nuance/connect/system/Connectivity;->getState()Lcom/nuance/connect/system/NetworkState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/connect/system/NetworkState;->isWifi()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v3}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v1, 0x1

    :cond_8
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processQueue idx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " transaction: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lcom/nuance/connect/service/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " requireDevice="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lcom/nuance/connect/service/comm/Transaction;->requiresDeviceId()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " requireSession="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lcom/nuance/connect/service/comm/Transaction;->requiresSessionId()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sessionId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/connect/service/comm/CommandQueue;->sessionId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " delay="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    if-nez v1, :cond_1

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private processTransaction(Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;)V
    .locals 7

    invoke-virtual {p1}, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/service/comm/Transaction;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processTransaction Transaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lcom/nuance/connect/service/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-interface {v3}, Lcom/nuance/connect/service/comm/Transaction;->getNextCommand()Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->active:Z

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->isOnline()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->commandsInProgress:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iget-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->realTimeEnabled:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->mqttEnabled:Z

    if-eqz v4, :cond_1

    :cond_1
    if-nez v2, :cond_2

    iget-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->realTimeOnly:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->httpConnector:Lcom/nuance/connect/service/comm/HttpConnector;

    new-instance v5, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;Lcom/nuance/connect/service/comm/CommandQueue$1;)V

    invoke-virtual {v4, v0, v3, v5}, Lcom/nuance/connect/service/comm/HttpConnector;->processCommand(Lcom/nuance/connect/service/comm/Command;Lcom/nuance/connect/service/comm/Transaction;Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;)Z

    move-result v1

    :goto_1
    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->commandsInProgress:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    invoke-interface {v3}, Lcom/nuance/connect/service/comm/Transaction;->getNextCommand()Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    iget-boolean v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->active:Z

    if-nez v4, :cond_5

    :cond_4
    invoke-direct {p0, v3}, Lcom/nuance/connect/service/comm/CommandQueue;->removeTransaction(Lcom/nuance/connect/service/comm/Transaction;)Z

    :goto_2
    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_5
    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private removeTransaction(Lcom/nuance/connect/service/comm/Transaction;)Z
    .locals 4

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/service/comm/Transaction;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    monitor-exit v3

    :goto_0
    return v2

    :cond_1
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private resetTimers()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    #getter for: Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->isPaused:Z
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->access$2400(Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput v2, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownCounter:I

    iput v2, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownDelay:I

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->resume()V

    :cond_0
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->mqttEnabled:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method protected handleMessage(Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;Landroid/os/Message;)V
    .locals 7

    const/4 v0, 0x1

    iget v5, p2, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->processQueue()V

    :cond_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/nuance/connect/service/comm/CommandQueue;->goodConnection:Z

    iget-object v5, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v5}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pause()V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "delay"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->getBackdownDelay()I

    move-result v2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_QUEUE_PAUSE for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v2, v3, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v3, v2}, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->sendMessageDelayedSeconds(Landroid/os/Message;I)V

    iget-object v5, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-interface {v5, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget v5, p2, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->incrementBackdownDelay()V

    :cond_2
    iget-object v5, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v5}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->resume()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isIdle()Z
    .locals 4

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIdle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->hasConnectivity:Z

    return v0
.end method

.method public registerResponseListener(Lcom/nuance/connect/service/ConnectClient$ResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->responseListener:Lcom/nuance/connect/service/ConnectClient$ResponseListener;

    return-void
.end method

.method public retryConnection()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendCommand(Lcom/nuance/connect/service/comm/Command;)V
    .locals 1

    new-instance v0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;

    invoke-direct {v0, p1}, Lcom/nuance/connect/service/comm/SingleCommandTransaction;-><init>(Lcom/nuance/connect/service/comm/Command;)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/comm/CommandQueue;->sendTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    return-void
.end method

.method public sendTransaction(Lcom/nuance/connect/service/comm/Transaction;)V
    .locals 7

    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "sendCommand after shutdown!"

    invoke-interface {v3, v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/nuance/connect/service/comm/Transaction;->allowDuplicates()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {v2, p1}, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->isSame(Lcom/nuance/connect/service/comm/Transaction;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring duplicate of transaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/nuance/connect/service/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    invoke-interface {p1}, Lcom/nuance/connect/service/comm/Transaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v3

    sget-object v5, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    if-ne v3, v5, :cond_3

    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->resetTimers()V

    :cond_3
    new-instance v1, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    invoke-direct {v1, p0, p1}, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;Lcom/nuance/connect/service/comm/Transaction;)V

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->processQueue()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->active:Z

    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->mqttEnabled:Z

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getConnectivity()Lcom/nuance/connect/system/Connectivity;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->networkListener:Lcom/nuance/connect/system/NetworkListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/Connectivity;->registerNetworkListener(Lcom/nuance/connect/system/NetworkListener;)V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->active:Z

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getConnectivity()Lcom/nuance/connect/system/Connectivity;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->networkListener:Lcom/nuance/connect/system/NetworkListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/Connectivity;->unregisterNetworkListener(Lcom/nuance/connect/system/NetworkListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void
.end method
