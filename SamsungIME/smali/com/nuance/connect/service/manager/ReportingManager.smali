.class public Lcom/nuance/connect/service/manager/ReportingManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;
.source "ReportingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/ReportingManager$4;
    }
.end annotation


# static fields
.field public static final AGGREGATE_EXPIRATION:Ljava/lang/String; = "AGGREGATE_EXPIRATION"

.field public static final AGGREGATE_GENERIC:Ljava/lang/String; = "AGGREGATE_GENERIC"

.field protected static final AGGREGATE_LAST_RUN:Ljava/lang/String; = "REPORTING_AGGREGATE_LAST_RUN"

.field public static final AGGREGATE_LIMIT:Ljava/lang/String; = "AGGREGATE_LIMIT"

.field public static final AGGREGATE_TIMER:Ljava/lang/String; = "AGGREGATE_TIMER"

.field public static final COMMAND_AGGREGATE:Ljava/lang/String; = "aggregate"

.field public static final COMMAND_FAMILY:Ljava/lang/String; = null

.field public static final COMMAND_INDIVIDUAL:Ljava/lang/String; = "individual"

.field public static final COMMAND_TRACKING:Ljava/lang/String; = "tracking"

.field public static final COMMAND_VERSION:I = 0x5

.field public static final MANAGER_NAME:Ljava/lang/String; = null

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages; = null

.field public static final METRICS_ALLOWED_PREF:Ljava/lang/String; = "REPORTING_METRICS_ALLOWED"

.field public static final REPORTING_EXPIRATION:Ljava/lang/String; = "REPORTING_EXPIRATION"

.field public static final REPORTING_GENERIC:Ljava/lang/String; = "REPORTING_GENERIC"

.field protected static final REPORTING_LAST_RUN:Ljava/lang/String; = "REPORTING_LAST_RUN"

.field public static final REPORTING_LIMIT:Ljava/lang/String; = "REPORTING_LIMIT"

.field public static final REPORTING_TIMER:Ljava/lang/String; = "REPORTING_TIMER"

.field protected static final TRACKING_INTERVAL:I = 0x3c


# instance fields
.field protected aggregateCount:I

.field protected aggregateDataExpiration:I

.field protected aggregateLimit:I

.field dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

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

.field private lastAggregateTime:J

.field private lastIndividualTime:J

.field private lastReport:J

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field protected metricsAllowed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected reportingAggregateInterval:I

.field protected reportingCount:I

.field protected reportingDataExpriation:I

.field protected reportingLimit:I

.field private reportingStatisticsEnabled:Z

.field protected reportingStatisticsInterval:I

.field private reportingStatisticsListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private reportingUsageEnabled:Z

.field private reportingUsageListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private trackingNextRun:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->REPORTING:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/ReportingManager;->COMMAND_FAMILY:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/manager/ReportingManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/ReportingManager;->MANAGER_NAME:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SEND_STAT_REPORTING:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SEND_AGGREGATE_REPORTING:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_SEND_REPORTING_NOW:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_GET_ALLOWED_REPORTING_METRICS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/ReportingManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 7

    const-wide/16 v5, 0x0

    const v0, 0x54600

    const v1, 0xc350

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingStatisticsInterval:I

    iput v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingAggregateInterval:I

    const v0, 0x69780

    iput v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingDataExpriation:I

    const v0, 0x76a700

    iput v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->aggregateDataExpiration:I

    iput v1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingLimit:I

    iput v1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->aggregateLimit:I

    iput v4, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingCount:I

    iput v4, p0, Lcom/nuance/connect/service/manager/ReportingManager;->aggregateCount:I

    iput-wide v5, p0, Lcom/nuance/connect/service/manager/ReportingManager;->trackingNextRun:J

    new-instance v0, Lcom/nuance/connect/service/manager/ReportingManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/ReportingManager$1;-><init>(Lcom/nuance/connect/service/manager/ReportingManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingStatisticsListener:Lcom/nuance/connect/internal/Property$ValueListener;

    new-instance v0, Lcom/nuance/connect/service/manager/ReportingManager$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/ReportingManager$2;-><init>(Lcom/nuance/connect/service/manager/ReportingManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingUsageListener:Lcom/nuance/connect/internal/Property$ValueListener;

    new-instance v0, Lcom/nuance/connect/service/manager/ReportingManager$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/ReportingManager$3;-><init>(Lcom/nuance/connect/service/manager/ReportingManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    iput-wide v5, p0, Lcom/nuance/connect/service/manager/ReportingManager;->lastReport:J

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->version:I

    sget-object v0, Lcom/nuance/connect/service/manager/ReportingManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/manager/ReportingManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "aggregate"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "individual"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "tracking"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/ReportingManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingStatisticsEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/nuance/connect/service/manager/ReportingManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingStatisticsEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/ReportingManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingUsageEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/nuance/connect/service/manager/ReportingManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingUsageEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/manager/ReportingManager;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/manager/ReportingManager;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/service/manager/ReportingManager;->sendReportTracking(ZZ)V

    return-void
.end method

.method private cleanStoredReports(JZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->clearAggregate(J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->clearIndividual(J)Z

    goto :goto_0
.end method

.method private determineUsageNextRun(Z)V
    .locals 11

    const-string v7, "REPORTING_LAST_RUN"

    const-string v1, "REPORTING_GENERIC"

    iget v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingStatisticsInterval:I

    if-eqz p1, :cond_0

    const-string v7, "REPORTING_AGGREGATE_LAST_RUN"

    const-string v1, "AGGREGATE_GENERIC"

    iget v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingAggregateInterval:I

    :cond_0
    iget-object v8, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-interface {v8, v7, v9, v10}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v3

    int-to-long v8, v2

    invoke-static {v8, v9, v3, v4}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v5

    new-instance v8, Lcom/nuance/connect/util/Alarm$Builder;

    iget-object v9, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const-class v10, Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-direct {v8, v9, v10, v1}, Lcom/nuance/connect/util/Alarm$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v8, v5, v6}, Lcom/nuance/connect/util/Alarm$Builder;->triggerTime(J)Lcom/nuance/connect/util/Alarm$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/connect/util/Alarm$Builder;->build()Lcom/nuance/connect/util/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->set()V

    iget-object v8, p0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "determineUsageNextRun "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    return-void
.end method

.method private enforceLimits(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->numAggregate()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->aggregateCount:I

    iget v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->aggregateCount:I

    iget v1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->aggregateLimit:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget v1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->aggregateLimit:I

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->limitAggregate(I)Z

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->numAggregate()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->aggregateCount:I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->numIndividual()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingCount:I

    iget v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingCount:I

    iget v1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingLimit:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget v1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingLimit:I

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->limitIndividual(I)Z

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->numIndividual()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingCount:I

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 4

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    const-string v2, "REPORTING_METRICS_ALLOWED"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashSet;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    :cond_0
    return-void
.end method

.method private processAggregateResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget-wide v1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->lastAggregateTime:J

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->clearAggregate(J)Z

    :cond_0
    invoke-direct {p0, v3}, Lcom/nuance/connect/service/manager/ReportingManager;->setLastRunToNow(Z)V

    invoke-direct {p0, v3}, Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun(Z)V

    return-void
.end method

.method private processIndividualResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget-wide v1, p0, Lcom/nuance/connect/service/manager/ReportingManager;->lastIndividualTime:J

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->clearIndividual(J)Z

    :cond_0
    invoke-direct {p0, v3}, Lcom/nuance/connect/service/manager/ReportingManager;->setLastRunToNow(Z)V

    invoke-direct {p0, v3}, Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun(Z)V

    return-void
.end method

.method private processTrackingResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 8

    iget-object v4, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v5, "36"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v5, "36"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v5, "36"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error found while parsing tracking responses for reporting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    :cond_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->sendAllowedMetricsToHost()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->savePreferences()V

    const-wide/16 v4, 0x3c

    invoke-static {v4, v5}, Lcom/nuance/connect/util/TimeConversion;->convertSecondsToTimeStamp(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nuance/connect/service/manager/ReportingManager;->trackingNextRun:J

    iget-object v4, p0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tracking next run set to: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/nuance/connect/service/manager/ReportingManager;->trackingNextRun:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v4, p1, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ReportingManager;->sendReports(Z)V

    return-void
.end method

.method private savePreferences()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_METRICS_ALLOWED"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_METRICS_ALLOWED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private sendAllowedMetricsToHost()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DEFAULT_KEY"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_ALLOWED_REPORTING_METRICS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method

.method private sendReportTracking(ZZ)V
    .locals 6

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->hasAggregate()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p2}, Lcom/nuance/connect/service/manager/ReportingManager;->setLastRunToNow(Z)V

    invoke-direct {p0, p2}, Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun(Z)V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReportTracking("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking if we need to send report tracking: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/nuance/connect/service/manager/ReportingManager;->trackingNextRun:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nuance/connect/service/manager/ReportingManager;->trackingNextRun:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    invoke-direct {p0, p2}, Lcom/nuance/connect/service/manager/ReportingManager;->sendReports(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->hasIndividual()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p2}, Lcom/nuance/connect/service/manager/ReportingManager;->setLastRunToNow(Z)V

    invoke-direct {p0, p2}, Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun(Z)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_1

    const-string v2, "tracking"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_1
.end method

.method private sendReports(Z)V
    .locals 12

    const/4 v11, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/nuance/connect/service/manager/ReportingManager;->lastReport:J

    iget-object v8, p0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ReportingManager.sendReports("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingUsageEnabled:Z

    :goto_0
    if-nez v2, :cond_2

    iget-wide v8, p0, Lcom/nuance/connect/service/manager/ReportingManager;->lastReport:J

    invoke-direct {p0, v8, v9, p1}, Lcom/nuance/connect/service/manager/ReportingManager;->cleanStoredReports(JZ)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/ReportingManager;->setLastRunToNow(Z)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingStatisticsEnabled:Z

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    iget-object v9, p0, Lcom/nuance/connect/service/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    :cond_3
    if-eqz p1, :cond_5

    iget-object v8, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v8}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getLastAggregatePoint()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/nuance/connect/service/manager/ReportingManager;->lastAggregateTime:J

    iget-object v8, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget-wide v9, p0, Lcom/nuance/connect/service/manager/ReportingManager;->lastAggregateTime:J

    invoke-virtual {v8, v3, v9, v10}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getAggregatePoints([Ljava/lang/String;J)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v8, "61"

    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "aggregate"

    sget-object v9, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v8, v9, v6}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-boolean v11, v0, Lcom/nuance/connect/service/comm/Command;->wifiOnly:Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    const/4 v7, 0x1

    :cond_4
    :goto_2
    if-nez v7, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/ReportingManager;->setLastRunToNow(Z)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun(Z)V

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v8}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getLastIndividualPoint()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/nuance/connect/service/manager/ReportingManager;->lastIndividualTime:J

    iget-object v8, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget-wide v9, p0, Lcom/nuance/connect/service/manager/ReportingManager;->lastIndividualTime:J

    invoke-virtual {v8, v3, v9, v10}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getIndividualPoints([Ljava/lang/String;J)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v8, "62"

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "individual"

    sget-object v9, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v8, v9, v6}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v4

    iput-boolean v11, v4, Lcom/nuance/connect/service/comm/Command;->wifiOnly:Z

    invoke-virtual {p0, v4}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    const/4 v7, 0x1

    goto :goto_2
.end method

.method private setLastRunToNow(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_AGGREGATE_LAST_RUN"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_LAST_RUN"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    goto :goto_0
.end method


# virtual methods
.method public addStatFromBundle(Landroid/os/Bundle;)V
    .locals 17

    const-string v1, "STAT_TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "STAT_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v1}, Lcom/nuance/connect/sqlite/SQLDataSource;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "STAT_TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "STAT_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "STAT_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "STAT_EXTRA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "STAT_TIMESTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v1, "point"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingUsageEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "STAT_VALUE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/connect/sqlite/ReportingDataSource;->createIndividualPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingCount:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingCount:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingLimit:I

    if-le v1, v8, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/nuance/connect/service/manager/ReportingManager;->enforceLimits(Z)V

    goto :goto_0

    :cond_2
    const-string v1, "aggregate"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingStatisticsEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "STAT_POINT_VALUE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "STAT_POINT_INTERVAL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    move-object v9, v2

    move-object v10, v3

    move-object v13, v5

    move-wide v14, v6

    invoke-virtual/range {v8 .. v15}, Lcom/nuance/connect/sqlite/ReportingDataSource;->createAggregatePoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/connect/service/manager/ReportingManager;->aggregateCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nuance/connect/service/manager/ReportingManager;->aggregateCount:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/connect/service/manager/ReportingManager;->aggregateCount:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nuance/connect/service/manager/ReportingManager;->aggregateLimit:I

    if-le v1, v8, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/nuance/connect/service/manager/ReportingManager;->enforceLimits(Z)V

    goto/16 :goto_0
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string v0, "REPORTING_GENERIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/nuance/connect/service/manager/ReportingManager;->sendReportTracking(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "AGGREGATE_GENERIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/nuance/connect/service/manager/ReportingManager;->sendReportTracking(ZZ)V

    goto :goto_0
.end method

.method public clearStoredStatistics()V
    .locals 3

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->clearAggregate(J)Z

    :cond_0
    return-void
.end method

.method public clearStoredUsage()V
    .locals 3

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->clearIndividual(J)Z

    :cond_0
    return-void
.end method

.method public deregister()V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->clearStoredStatistics()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->clearStoredUsage()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->close()V

    :cond_0
    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->destroy()V

    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/nuance/connect/internal/common/ManagerService;->REPORTING:Lcom/nuance/connect/internal/common/ManagerService;

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

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_STATISTICS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingStatisticsListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_USAGE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingUsageListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->AGGREGATE_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_MAX_RESULTS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_TIME_LIMIT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_AGGREGATE_TIME_LIMIT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->initializeData()V

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ReportingManager needs to be modified for changes to service-lifecycle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected initializeData()V
    .locals 2

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v0, v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/SQLDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->verifyDatabase()V

    :cond_0
    return-void
.end method

.method public onFailure(Lcom/nuance/connect/service/comm/Command;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ReportingManager.onFailure"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string v0, "aggregate"

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->lastAggregateTime:J

    invoke-direct {p0, v0, v1, v3}, Lcom/nuance/connect/service/manager/ReportingManager;->cleanStoredReports(JZ)V

    invoke-direct {p0, v3}, Lcom/nuance/connect/service/manager/ReportingManager;->setLastRunToNow(Z)V

    invoke-direct {p0, v3}, Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "individual"

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->lastIndividualTime:J

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/connect/service/manager/ReportingManager;->cleanStoredReports(JZ)V

    invoke-direct {p0, v2}, Lcom/nuance/connect/service/manager/ReportingManager;->setLastRunToNow(Z)V

    invoke-direct {p0, v2}, Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun(Z)V

    goto :goto_0
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/service/manager/ReportingManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/ReportingManager;->addStatFromBundle(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->sendReportingNow()V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->sendAllowedMetricsToHost()V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "tracking"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/ReportingManager;->processTrackingResponse(Lcom/nuance/connect/service/comm/Response;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "aggregate"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/ReportingManager;->processAggregateResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "individual"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/ReportingManager;->processIndividualResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0
.end method

.method public prepareForUpgrade()V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->sendReportingNow()V

    return-void
.end method

.method protected sendReportingNow()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_LAST_RUN"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_AGGREGATE_LAST_RUN"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    new-instance v0, Lcom/nuance/connect/util/Alarm$Builder;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const-class v2, Lcom/nuance/connect/service/manager/ReportingManager;

    const-string v3, "REPORTING_GENERIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/util/Alarm$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm$Builder;->build()Lcom/nuance/connect/util/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->cancel()V

    new-instance v0, Lcom/nuance/connect/util/Alarm$Builder;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    const-class v2, Lcom/nuance/connect/service/manager/ReportingManager;

    const-string v3, "AGGREGATE_GENERIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/util/Alarm$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm$Builder;->build()Lcom/nuance/connect/util/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/util/Alarm;->cancel()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun(Z)V

    return-void
.end method

.method public start()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->aggregateDataExpiration:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1, v5}, Lcom/nuance/connect/service/manager/ReportingManager;->cleanStoredReports(JZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/nuance/connect/service/manager/ReportingManager;->reportingDataExpriation:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1, v4}, Lcom/nuance/connect/service/manager/ReportingManager;->cleanStoredReports(JZ)V

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->trackingNextRun:J

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager;->dataSource:Lcom/nuance/connect/sqlite/ReportingDataSource;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->initializeData()V

    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->loadPreferences()V

    invoke-direct {p0, v5}, Lcom/nuance/connect/service/manager/ReportingManager;->enforceLimits(Z)V

    invoke-direct {p0, v4}, Lcom/nuance/connect/service/manager/ReportingManager;->enforceLimits(Z)V

    invoke-direct {p0, v5}, Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun(Z)V

    invoke-direct {p0, v4}, Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun(Z)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/ReportingManager;->sendAllowedMetricsToHost()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    return-void
.end method
