.class final Lcom/nuance/swypeconnect/ac/ACBuildConfig;
.super Ljava/lang/Object;
.source "ACBuildConfig.java"


# static fields
.field private static final APPKEY_STARTS:Ljava/lang/String; = ""

.field private static final BUILD_EXPIRATION:Ljava/lang/String; = ""

.field private static final BUILD_TIMESTAMP:Ljava/lang/String; = "20130102.120000"

.field private static final CONFIG_FILE:Ljava/lang/String; = "/com/nuance/swypeconnect/ac/config.dat"

.field private static final DEFAULT_LOG_LEVEL:Ljava/lang/String; = "6"

.field private static final DEVELOPER_LOG_ENABLED:Ljava/lang/String; = "false"

.field private static final LOCATION_LEVEL:Ljava/lang/String; = "2"

.field private static final OEM_ID:Ljava/lang/String; = "0"

.field private static final URL:Ljava/lang/String; = "https://api.swypeconnect.com/"

.field private static final VERSION:Ljava/lang/String; = "0.1.0.0000"


# instance fields
.field final appKeyStarts:Ljava/lang/String;

.field final buildExpiration:Ljava/lang/String;

.field final buildTimestamp:Ljava/lang/String;

.field final defaultLogLevel:Ljava/lang/String;

.field final developerLogEnabled:Ljava/lang/String;

.field final locationLevel:Ljava/lang/String;

.field final oemId:Ljava/lang/String;

.field final url:Ljava/lang/String;

.field final version:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 13

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "/com/nuance/swypeconnect/ac/config.dat"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const-string v10, "0.1.0.0000"

    const-string v8, "0"

    const-string v9, "https://api.swypeconnect.com/"

    const-string v4, "20130102.120000"

    const-string v3, ""

    const-string v2, ""

    const-string v7, "2"

    const-string v6, "false"

    const-string v5, "6"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v11, "version"

    const-string v12, "0.1.0.0000"

    invoke-virtual {v1, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "oem.id"

    const-string v12, "0"

    invoke-virtual {v1, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "url"

    const-string v12, "https://api.swypeconnect.com/"

    invoke-virtual {v1, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "build.timestamp"

    const-string v12, "20130102.120000"

    invoke-virtual {v1, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "build.expiration"

    const-string v12, ""

    invoke-virtual {v1, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "appkey.starts"

    const-string v12, ""

    invoke-virtual {v1, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "locationlevel.default"

    const-string v12, "2"

    invoke-virtual {v1, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "developerlog.enabled"

    const-string v12, "false"

    invoke-virtual {v1, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "loglevel.default"

    const-string v12, "6"

    invoke-virtual {v1, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    iput-object v10, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->version:Ljava/lang/String;

    iput-object v8, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->oemId:Ljava/lang/String;

    iput-object v9, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->url:Ljava/lang/String;

    iput-object v4, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildTimestamp:Ljava/lang/String;

    iput-object v3, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildExpiration:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->appKeyStarts:Ljava/lang/String;

    iput-object v7, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationLevel:Ljava/lang/String;

    iput-object v6, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->developerLogEnabled:Ljava/lang/String;

    iput-object v5, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->defaultLogLevel:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v11

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v11

    goto :goto_0
.end method
