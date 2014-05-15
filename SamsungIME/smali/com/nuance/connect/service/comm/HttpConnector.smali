.class public Lcom/nuance/connect/service/comm/HttpConnector;
.super Ljava/lang/Object;
.source "HttpConnector.java"


# static fields
.field private static final COMPRESSION_THRESHOLD:I = 0xc8

.field private static final encoding:Ljava/lang/String; = "UTF-8"


# instance fields
.field private analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

.field private client:Lcom/nuance/connect/service/ConnectClient;

.field private connectionStatus:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;

.field private connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private serverURL:Ljava/lang/String;

.field private serverUrlChangeListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;Lcom/nuance/connect/service/comm/ConnectorCallback;Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/service/comm/HttpConnector$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/HttpConnector$1;-><init>(Lcom/nuance/connect/service/comm/HttpConnector;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector;->serverUrlChangeListener:Lcom/nuance/connect/internal/Property$ValueListener;

    iput-object p1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->client:Lcom/nuance/connect/service/ConnectClient;

    iput-object p2, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectionStatus:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;

    iput-object p3, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    iput-object p4, p0, Lcom/nuance/connect/service/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->URL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->serverUrlChangeListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {p1, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/comm/HttpConnector;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/connect/service/comm/HttpConnector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->serverURL:Ljava/lang/String;

    return-object p1
.end method

.method private allowsOutput()Z
    .locals 3

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private commandToURL(Lcom/nuance/connect/service/comm/Command;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->serverURL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/nuance/connect/service/comm/Command;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private connectToUrl(Lcom/nuance/connect/service/comm/Command;)Ljava/net/HttpURLConnection;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    iget-object v11, p1, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    :goto_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v10}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    :goto_2
    return-object v8

    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/comm/HttpConnector;->commandToURL(Lcom/nuance/connect/service/comm/Command;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :catch_0
    move-exception v9

    new-instance v0, Ljava/net/URI;

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v10}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v10

    goto :goto_1

    :cond_1
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    goto :goto_2
.end method

.method private generateBody(Lcom/nuance/connect/service/comm/Command;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v9, p1, Lcom/nuance/connect/service/comm/Command;->requireDevice:Z

    if-eqz v9, :cond_0

    const-string v9, "5"

    iget-object v10, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v10}, Lcom/nuance/connect/service/comm/ConnectorCallback;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-boolean v9, p1, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    if-eqz v9, :cond_1

    const-string v9, "3"

    iget-object v10, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v10}, Lcom/nuance/connect/service/comm/ConnectorCallback;->getSessionId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v9, "0"

    iget-object v10, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v10}, Lcom/nuance/connect/service/comm/ConnectorCallback;->getRequestKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v9, p1, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    if-eqz v9, :cond_2

    const-string v9, "4"

    iget-object v10, p1, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v9, p1, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v9, p1, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_3

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    instance-of v9, v6, Ljava/lang/Long;

    if-eqz v9, :cond_4

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v9

    invoke-virtual {v0, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    instance-of v9, v6, Ljava/lang/Integer;

    if-eqz v9, :cond_5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_5
    instance-of v9, v6, Ljava/lang/Boolean;

    if-eqz v9, :cond_6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_6
    instance-of v9, v6, Ljava/util/HashMap;

    if-eqz v9, :cond_8

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_8
    instance-of v9, v6, Lorg/json/JSONObject;

    if-eqz v9, :cond_9

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_9
    instance-of v9, v6, Lorg/json/JSONArray;

    if-eqz v9, :cond_a

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_a
    iget-object v9, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: unusable key type key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    return-object v0
.end method

.method private hasSufficientSpace(I)Z
    .locals 9

    new-instance v6, Landroid/os/StatFs;

    iget-object v7, p0, Lcom/nuance/connect/service/comm/HttpConnector;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    mul-long v4, v0, v2

    int-to-long v7, p1

    cmp-long v7, v7, v4

    if-gez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private processFileResult(Lcom/nuance/connect/service/comm/Command;Ljava/io/File;)V
    .locals 5

    new-instance v0, Lcom/nuance/connect/service/comm/Response;

    invoke-direct {v0}, Lcom/nuance/connect/service/comm/Response;-><init>()V

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Response;->commandFamily:Ljava/lang/String;

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, v0, Lcom/nuance/connect/service/comm/Response;->status:I

    iput-object p1, v0, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Response;->fileLocation:Ljava/lang/String;

    iput-object p2, v0, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    iget-object v2, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v2, v0}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onResponse(Lcom/nuance/connect/service/comm/Response;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloaded File: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-interface {v2, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private processResult(Lcom/nuance/connect/service/comm/Command;Lorg/json/JSONObject;)Z
    .locals 18

    const/4 v8, 0x1

    new-instance v9, Lcom/nuance/connect/service/comm/Response;

    invoke-direct {v9}, Lcom/nuance/connect/service/comm/Response;-><init>()V

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v11, 0x1

    const-string v12, ""

    :try_start_0
    const-string v15, "6"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v15, "6"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    move v10, v13

    const-string v15, "6"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    iput v10, v9, Lcom/nuance/connect/service/comm/Response;->status:I

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    iput-object v15, v9, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    iput-object v15, v9, Lcom/nuance/connect/service/comm/Response;->commandFamily:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    iput-object v15, v9, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    const-string v15, "5"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "5"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v9, Lcom/nuance/connect/service/comm/Response;->deviceId:Ljava/lang/String;

    const-string v15, "5"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    const-string v15, "3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v15, "3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v9, Lcom/nuance/connect/service/comm/Response;->sessionId:Ljava/lang/String;

    const-string v15, "3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    const-string v15, "4"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "4"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v9, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    const-string v15, "4"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    const-string v15, "51"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, "51"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v9, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    const-string v15, "51"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    const-string v15, "0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    const-string v15, "64"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Debug Info: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "64"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_5
    sparse-switch v10, :sswitch_data_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "processResult() UNKNOWN COMMAND: ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "processResult() - JSONException "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_6

    const/4 v11, 0x5

    :cond_6
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_b

    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v15, v9}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onResponse(Lcom/nuance/connect/service/comm/Response;)V

    :goto_4
    return v8

    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v16, "No status sent back from server."

    invoke-interface/range {v15 .. v16}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v10, 0x0

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v15}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onDeviceInvalidated()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "processResult() - Exception "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_6

    const/4 v11, 0x2

    goto :goto_3

    :sswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v15}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onSessionInvalidated()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v16, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_RESET_SESSION:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual/range {v15 .. v16}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v16, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_CREATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual/range {v15 .. v16}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    goto/16 :goto_1

    :sswitch_2
    const/4 v15, 0x0

    iput-object v15, v9, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_3
    const/16 v11, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v15, "8"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    const-string v15, "8"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Server requested delay for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_5
    const/4 v11, 0x3

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v15}, Lcom/nuance/connect/service/comm/ConnectorCallback;->getDefaultDelay()I

    move-result v3

    goto :goto_5

    :sswitch_5
    const-string v15, "9"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v15, "9"

    const-string v16, "9"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v7, v9, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v15, v9}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onValidateDeviceProperties(Lcom/nuance/connect/service/comm/Response;)V

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v16, "Client recieved Invalid Argument."

    invoke-interface/range {v15 .. v16}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v15}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onAccountInvalidated()V

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_8
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1

    :cond_a
    iput-object v7, v9, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p1

    iget v15, v0, Lcom/nuance/connect/service/comm/Command;->retryCount:I

    add-int/lit8 v16, v15, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/nuance/connect/service/comm/Command;->retryCount:I

    if-gez v15, :cond_c

    sget-object v15, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->requestType:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v0, p1

    invoke-interface {v15, v0, v3, v11, v12}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onRetry(Lcom/nuance/connect/service/comm/Command;IILjava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v0, p1

    invoke-interface {v15, v0, v11, v12}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onFailure(Lcom/nuance/connect/service/comm/Command;ILjava/lang/String;)V

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_8
        0x0 -> :sswitch_8
        0x1 -> :sswitch_8
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_8
        0xb -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0xf -> :sswitch_6
        0x11 -> :sswitch_5
        0x12 -> :sswitch_8
        0x13 -> :sswitch_8
        0x14 -> :sswitch_8
        0x18 -> :sswitch_7
        0x19 -> :sswitch_8
        0x1a -> :sswitch_8
        0x1fa -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public destroyConnection()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

    invoke-interface {v0}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;->flush()V

    return-void
.end method

.method public processCommand(Lcom/nuance/connect/service/comm/Command;Lcom/nuance/connect/service/comm/Transaction;Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;)Z
    .locals 56

    const/16 v31, 0x1

    const/16 v45, 0x0

    const/4 v9, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/service/comm/Command;->shortString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const-wide/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

    move-object/from16 v52, v0

    invoke-interface/range {v52 .. v52}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;->mark()V

    const/16 v46, 0x1

    const-string v47, ""

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->start()V

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/nuance/connect/service/comm/HttpConnector;->connectToUrl(Lcom/nuance/connect/service/comm/Command;)Ljava/net/HttpURLConnection;

    move-result-object v45

    move-object/from16 v15, v45

    new-instance v52, Lcom/nuance/connect/service/comm/HttpConnector$2;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/nuance/connect/service/comm/HttpConnector$2;-><init>(Lcom/nuance/connect/service/comm/HttpConnector;Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->setExpirer(Ljava/lang/Runnable;)V

    const-string v52, "http.keepAlive"

    const-string v53, "false"

    invoke-static/range {v52 .. v53}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/16 v52, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/service/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v52

    if-eqz v52, :cond_2

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/service/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->length()I

    move-result v52

    if-lez v52, :cond_2

    new-instance v11, Ljava/io/File;

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/service/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v52

    if-eqz v52, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v33

    :cond_0
    const-wide/16 v52, 0x0

    cmp-long v52, v33, v52

    if-lez v52, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Seeking to: "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string v52, "Range"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "bytes="

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "-"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11

    :cond_1
    move-object v10, v11

    :cond_2
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/comm/HttpConnector;->allowsOutput()Z

    move-result v52

    if-eqz v52, :cond_3

    const/16 v52, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    :cond_3
    const/16 v52, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "processCommand()  URL: ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "]"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-wide/16 v43, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "PUT"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->sendFileLocation:Ljava/lang/String;

    move-object/from16 v52, v0

    if-eqz v52, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "PUT request "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->sendFileLocation:Ljava/lang/String;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->sendFileLocation:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v52

    if-nez v52, :cond_a

    new-instance v52, Ljava/io/IOException;

    const-string v53, "File does not exists!"

    invoke-direct/range {v52 .. v53}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v52
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :catch_0
    move-exception v14

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "processCommand() - send - JSONException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/16 v46, 0x5

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->tick()V

    if-nez v9, :cond_4

    :try_start_3
    invoke-virtual/range {v45 .. v45}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Obj ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] serverConn.getResponseCode("

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ") command: "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sparse-switch v40, :sswitch_data_0

    const/4 v9, 0x1

    const/16 v46, 0x2

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    move-result-object v47

    :cond_4
    :goto_2
    :sswitch_0
    if-nez v9, :cond_8

    const/16 v24, 0x0

    const/16 v37, 0x0

    const/16 v29, 0x0

    :try_start_4
    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->getContentLength()I

    move-result v27

    const-string v52, "Content-Range"

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const/high16 v35, -0x8000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

    move-object/from16 v52, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v53, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move-wide/from16 v2, v53

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;->writeResponse(Lcom/nuance/connect/service/comm/Command;J)V

    if-eqz v27, :cond_12

    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v52

    const-string v53, "json"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v52

    if-eqz v52, :cond_12

    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v38, Ljava/io/BufferedReader;

    new-instance v52, Ljava/io/InputStreamReader;

    const-string v53, "UTF-8"

    move-object/from16 v0, v52

    move-object/from16 v1, v24

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v53, 0x400

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual/range {v38 .. v38}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v42

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V

    invoke-virtual/range {v38 .. v38}, Ljava/io/BufferedReader;->close()V

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, " JSON response: "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v41, Lorg/json/JSONObject;

    move-object/from16 v0, v41

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/service/comm/HttpConnector;->processResult(Lcom/nuance/connect/service/comm/Command;Lorg/json/JSONObject;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result v31

    move-object/from16 v37, v38

    :cond_5
    :goto_3
    if-eqz v29, :cond_6

    :try_start_6
    invoke-virtual/range {v29 .. v29}, Ljava/io/BufferedOutputStream;->close()V

    :cond_6
    if-eqz v24, :cond_7

    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v37, :cond_8

    invoke-virtual/range {v37 .. v37}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10

    :cond_8
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->complete()V

    if-eqz v45, :cond_9

    invoke-virtual/range {v45 .. v45}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->canceled:Z

    move/from16 v52, v0

    if-eqz v52, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onCancel(Lcom/nuance/connect/service/comm/Command;)V

    :goto_5
    return v31

    :cond_a
    const/16 v52, 0x1

    :try_start_7
    move-object/from16 v0, v45

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-direct/range {p0 .. p1}, Lcom/nuance/connect/service/comm/HttpConnector;->generateBody(Lcom/nuance/connect/service/comm/Command;)Lorg/json/JSONObject;

    move-result-object v26

    const-string v52, "Content-Type"

    const-string v53, "application/octet-stream"

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v52, "X-Swype-Connect"

    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v52

    move-wide/from16 v0, v52

    long-to-int v0, v0

    move/from16 v52, v0

    move-object/from16 v0, v45

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-result-wide v43

    const/16 v29, 0x0

    const/4 v5, 0x0

    const/16 v18, 0x0

    :try_start_8
    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v29

    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    new-instance v6, Ljava/io/BufferedInputStream;

    const/16 v52, 0x1000

    move-object/from16 v0, v19

    move/from16 v1, v52

    invoke-direct {v6, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v36

    :goto_6
    if-ltz v36, :cond_b

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v36

    goto :goto_6

    :cond_b
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :try_start_b
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    const-string v53, "sendingFile() --- "

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move-wide/from16 v2, v43

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;->writeRequest(Lcom/nuance/connect/service/comm/Command;J)V

    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->connect()V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_1

    :catch_1
    move-exception v14

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "processCommand() - send - ProtocolException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/16 v46, 0x6

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_1

    :catchall_0
    move-exception v52

    :goto_9
    :try_start_c
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    throw v52
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :catch_2
    move-exception v14

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "processCommand() - send - URISyntaxException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/16 v46, 0x6

    invoke-virtual {v14}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_1

    :cond_d
    :try_start_d
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    move/from16 v52, v0

    if-eqz v52, :cond_c

    const/16 v52, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-direct/range {p0 .. p1}, Lcom/nuance/connect/service/comm/HttpConnector;->generateBody(Lcom/nuance/connect/service/comm/Command;)Lorg/json/JSONObject;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v52, "UTF-8"

    move-object/from16 v0, v52

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    const-string v52, "Content-Type"

    const-string v53, "text/json"

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, v13

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v53, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Size of content: "

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    array-length v0, v13

    move/from16 v54, v0

    move-object/from16 v0, v52

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const/16 v52, 0xc8

    array-length v0, v13

    move/from16 v55, v0

    move/from16 v0, v52

    move/from16 v1, v55

    if-ge v0, v1, :cond_f

    const-string v52, " compressing"

    :goto_b
    move-object/from16 v0, v54

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/16 v52, 0xc8

    array-length v0, v13

    move/from16 v53, v0

    move/from16 v0, v52

    move/from16 v1, v53

    if-ge v0, v1, :cond_11

    const-string v52, "Content-Encoding"

    const-string v53, "gzip"

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    move-result-object v29

    const/16 v20, 0x0

    :try_start_e
    new-instance v21, Ljava/util/zip/GZIPOutputStream;

    const/16 v52, 0x1000

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move/from16 v2, v52

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-eqz v21, :cond_e

    :try_start_10
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/DeflaterOutputStream;->close()V

    :cond_e
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Obj ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] sendingBody() --- "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, " --- "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_7

    :catch_3
    move-exception v14

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "processCommand() - send - MalformedURLException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/16 v46, 0x6

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_1

    :cond_f
    :try_start_11
    const-string v52, " not compressing"

    goto/16 :goto_b

    :catchall_1
    move-exception v52

    :goto_e
    if-eqz v20, :cond_10

    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/DeflaterOutputStream;->close()V

    :cond_10
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V

    throw v52
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    :catch_4
    move-exception v14

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "processCommand() - send - IOException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/16 v46, 0x2

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_1

    :cond_11
    :try_start_12
    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_c

    :catch_5
    move-exception v14

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "processCommand() - send - NullPointerException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/16 v46, 0x2

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_1

    :catch_6
    move-exception v14

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "processCommand() - send - Exception "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/16 v46, 0x2

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_1

    :sswitch_1
    const/16 v23, 0x1

    const/16 v46, 0x7

    :try_start_13
    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_13
    .catch Ljavax/net/ssl/SSLException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    move-result-object v47

    goto/16 :goto_2

    :sswitch_2
    const-wide/16 v52, 0x0

    cmp-long v52, v33, v52

    if-gtz v52, :cond_4

    const/16 v23, 0x1

    const/16 v46, 0x8

    goto/16 :goto_2

    :catch_7
    move-exception v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "SSLException trying to get response code "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/16 v23, 0x1

    const/16 v46, 0x4

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_2

    :catch_8
    move-exception v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "IOException trying to get response code "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/16 v23, 0x1

    const/16 v46, 0x2

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_2

    :catch_9
    move-exception v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "NPE trying to get response code "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/16 v46, 0x2

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_2

    :catch_a
    move-exception v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Exception trying to get response code "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/16 v46, 0x2

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_2

    :cond_12
    if-gtz v27, :cond_13

    const/16 v52, -0x1

    move/from16 v0, v27

    move/from16 v1, v52

    if-ne v0, v1, :cond_23

    :cond_13
    :try_start_14
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/nuance/connect/service/comm/HttpConnector;->hasSufficientSpace(I)Z

    move-result v52

    if-eqz v52, :cond_23

    const-wide/16 v52, 0x0

    cmp-long v52, v33, v52

    if-lez v52, :cond_14

    if-eqz v32, :cond_14

    const-string v52, "/"

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    move-result v52

    if-eqz v52, :cond_14

    :try_start_15
    const-string v52, "/"

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v52

    add-int/lit8 v52, v52, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_15} :catch_e

    move-result v35

    :cond_14
    :goto_12
    const-wide/16 v52, 0x0

    cmp-long v52, v33, v52

    if-lez v52, :cond_19

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v52, v0

    cmp-long v52, v33, v52

    if-eqz v52, :cond_15

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v52, v0

    cmp-long v52, v33, v52

    if-nez v52, :cond_19

    :cond_15
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    const-string v53, "Download already complete!"

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/nuance/connect/service/comm/HttpConnector;->processFileResult(Lcom/nuance/connect/service/comm/Command;Ljava/io/File;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_3

    :catchall_2
    move-exception v52

    :goto_14
    if-eqz v29, :cond_16

    :try_start_17
    invoke-virtual/range {v29 .. v29}, Ljava/io/BufferedOutputStream;->close()V

    :cond_16
    if-eqz v24, :cond_17

    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V

    :cond_17
    if-eqz v37, :cond_18

    invoke-virtual/range {v37 .. v37}, Ljava/io/BufferedReader;->close()V

    :cond_18
    throw v52
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_10

    :catch_b
    move-exception v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "processCommand() - receive - JSONException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/16 v46, 0x5

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_4

    :catch_c
    move-exception v14

    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    const-string v53, "Invalid range to get total from. NFE"

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_12

    :catch_d
    move-exception v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    const-string v53, "Invalid range to get total from. NPE"

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_12

    :catch_e
    move-exception v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    const-string v53, "Invalid substring?"

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_19
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    move/from16 v39, v0

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v51, v0

    const/16 v49, 0x0

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v52, v0

    add-int v50, v27, v52

    div-int/lit8 v22, v50, 0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Downloading file now. total size is: ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "]["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    if-nez v10, :cond_1a

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->client:Lcom/nuance/connect/service/ConnectClient;

    move-object/from16 v52, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Lcom/nuance/connect/service/comm/Transaction;->createDownloadFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v11

    :cond_1a
    new-instance v25, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v52

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    :try_start_19
    new-instance v30, Ljava/io/BufferedOutputStream;

    new-instance v52, Ljava/io/FileOutputStream;

    const/16 v53, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-direct {v0, v10, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v30

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    const/16 v17, 0x0

    :cond_1b
    if-nez v17, :cond_22

    :try_start_1a
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->canceled:Z

    move/from16 v52, v0

    if-eqz v52, :cond_1c

    new-instance v52, Ljava/io/IOException;

    const-string v53, "download canceled"

    invoke-direct/range {v52 .. v53}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v52

    :catchall_3
    move-exception v52

    move-object/from16 v29, v30

    move-object/from16 v24, v25

    goto/16 :goto_14

    :cond_1c
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedInputStream;->read()I

    move-result v28

    const/16 v52, -0x1

    move/from16 v0, v28

    move/from16 v1, v52

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    add-int/lit8 v51, v51, 0x1

    add-int/lit8 v49, v49, 0x1

    :goto_15
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v52

    if-eqz v52, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    const-string v53, "network timed out"

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v52, Ljava/io/IOException;

    const-string v53, "timeout occurred"

    invoke-direct/range {v52 .. v53}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v52

    :cond_1d
    const/16 v17, 0x1

    goto :goto_15

    :cond_1e
    if-eqz v39, :cond_20

    move/from16 v0, v49

    move/from16 v1, v22

    if-ge v0, v1, :cond_1f

    const/16 v52, 0x1

    move/from16 v0, v17

    move/from16 v1, v52

    if-ne v0, v1, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move/from16 v2, v51

    move/from16 v3, v50

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onDownloadStatus(Lcom/nuance/connect/service/comm/Command;II)V

    const/16 v49, 0x0

    :cond_20
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->getInterval()I

    move-result v52

    rem-int v52, v51, v52

    if-nez v52, :cond_21

    invoke-virtual/range {v30 .. v30}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->tick()V

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectionStatus:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;

    move-object/from16 v52, v0

    invoke-interface/range {v52 .. v52}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;->isConnected()Z

    move-result v52

    if-nez v52, :cond_1b

    new-instance v52, Ljava/io/IOException;

    const-string v53, "Connection lost"

    invoke-direct/range {v52 .. v53}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v52

    :cond_22
    invoke-virtual/range {v30 .. v30}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    move-object/from16 v29, v30

    move-object/from16 v24, v25

    goto/16 :goto_13

    :cond_23
    if-gtz v27, :cond_24

    const/16 v52, -0x1

    move/from16 v0, v27

    move/from16 v1, v52

    if-ne v0, v1, :cond_25

    :cond_24
    :try_start_1b
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/nuance/connect/service/comm/HttpConnector;->hasSufficientSpace(I)Z

    move-result v52

    if-nez v52, :cond_25

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    move/from16 v52, v0

    if-eqz v52, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v52, v0

    const/16 v53, -0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move/from16 v2, v53

    move/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onDownloadStatus(Lcom/nuance/connect/service/comm/Command;II)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto/16 :goto_3

    :cond_25
    const/4 v9, 0x1

    goto/16 :goto_3

    :catch_f
    move-exception v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "processCommand() - receive - IOException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/16 v23, 0x1

    const/16 v46, 0x2

    goto/16 :goto_4

    :catch_10
    move-exception v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "processCommand() - receive - Exception "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/16 v46, 0x2

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_4

    :cond_26
    if-nez v9, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onSuccess(Lcom/nuance/connect/service/comm/Command;)V

    goto/16 :goto_5

    :cond_27
    const/16 v52, 0x1

    move/from16 v0, v23

    move/from16 v1, v52

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    move/from16 v52, v0

    if-nez v52, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move/from16 v2, v46

    move-object/from16 v3, v47

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onIOException(Lcom/nuance/connect/service/comm/Command;ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v52, v0

    const/16 v53, -0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move/from16 v2, v53

    move/from16 v3, v46

    move-object/from16 v4, v47

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onRetry(Lcom/nuance/connect/service/comm/Command;IILjava/lang/String;)V

    const/16 v31, 0x0

    goto/16 :goto_5

    :catchall_4
    move-exception v52

    move-object/from16 v37, v38

    goto/16 :goto_14

    :catchall_5
    move-exception v52

    move-object/from16 v24, v25

    goto/16 :goto_14

    :catch_11
    move-exception v14

    move-object v10, v11

    goto/16 :goto_11

    :catch_12
    move-exception v14

    move-object v10, v11

    goto/16 :goto_10

    :catch_13
    move-exception v14

    move-object v10, v11

    goto/16 :goto_f

    :catch_14
    move-exception v14

    move-object v10, v11

    goto/16 :goto_d

    :catch_15
    move-exception v14

    move-object v10, v11

    goto/16 :goto_a

    :catch_16
    move-exception v14

    move-object v10, v11

    goto/16 :goto_8

    :catch_17
    move-exception v14

    move-object v10, v11

    goto/16 :goto_0

    :catchall_6
    move-exception v52

    move-object/from16 v20, v21

    goto/16 :goto_e

    :catchall_7
    move-exception v52

    move-object/from16 v18, v19

    goto/16 :goto_9

    :catchall_8
    move-exception v52

    move-object/from16 v18, v19

    move-object v5, v6

    goto/16 :goto_9

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xce -> :sswitch_2
        0x193 -> :sswitch_1
        0x196 -> :sswitch_1
    .end sparse-switch
.end method
