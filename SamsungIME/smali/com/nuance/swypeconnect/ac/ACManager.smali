.class public final Lcom/nuance/swypeconnect/ac/ACManager;
.super Ljava/lang/Object;
.source "ACManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;,
        Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;,
        Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;
    }
.end annotation


# static fields
.field public static final CHINESE_DICTIONARY_SERVICE:Ljava/lang/String; = "CHINESE_DICTIONARY_SERVICE"

.field public static final CONNECTION_STATUS_DELAYED:I = 0x3

.field public static final CONNECTION_STATUS_OK:I = 0x1

.field public static final CONNECTION_STATUS_STALLED:I = 0x2

.field public static final CONNECTION_STATUS_STALLED_DOWNLOAD:I = 0x8

.field public static final CONNECTION_STATUS_STALLED_HTTP_ERROR:I = 0x7

.field public static final CONNECTION_STATUS_STALLED_JSON_PARSE:I = 0x5

.field public static final CONNECTION_STATUS_STALLED_PROTOCOL_EXCEPTION:I = 0x6

.field public static final CONNECTION_STATUS_STALLED_SSL:I = 0x4

.field public static final CONNECTION_STATUS_STALLED_UNKNOWN_RESPONSE:I = 0x9

.field public static final CONNECTION_TYPE_BACKGROUND:I = 0x2

.field public static final CONNECTION_TYPE_FOREGROUND:I = 0x1

.field public static final CONNECT_TYPE_ALL:I = 0x3

.field public static final DEVICE_SERVICE:Ljava/lang/String; = "DEVICE"

.field public static final DLM_SERVICE:Ljava/lang/String; = "DLM"

.field public static final LANGUAGE_SERVICE:Ljava/lang/String; = "LANGUAGE"

.field public static final LIVING_LANGUAGE_SERVICE:Ljava/lang/String; = "LIVING_LANGUAGE"


# instance fields
.field private applicationId:Ljava/lang/String;

.field private buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

.field private buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

.field private configService:Lcom/nuance/connect/api/ConfigService;

.field private configuration:Lcom/nuance/swypeconnect/ac/ACConfiguration;

.field private connect:Lcom/nuance/connect/api/ConnectServiceManager;

.field private connectionCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;",
            "Lcom/nuance/connect/api/ConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field private coreVersionAlpha:Ljava/lang/String;

.field private coreVersionChinese:Ljava/lang/String;

.field private coreVersionJapanese:Ljava/lang/String;

.field private coreVersionKorean:Ljava/lang/String;

.field private isStarted:Z

.field private language:Lcom/nuance/swypeconnect/ac/ACLanguage;

.field private legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private oemId:Ljava/lang/String;

.field private services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swypeconnect/ac/ACService;",
            ">;"
        }
    .end annotation
.end field

.field private store:Lcom/nuance/connect/store/FileStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v2}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->applicationId:Ljava/lang/String;

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    invoke-direct {v2}, Lcom/nuance/swypeconnect/ac/ACBuildConfig;-><init>()V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    new-instance v3, Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;

    invoke-direct {v3}, Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;-><init>()V

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    invoke-direct {v2, p0, v3, v4}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;Lcom/nuance/swypeconnect/ac/ACBuildConfig;)V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v2}, Lcom/nuance/connect/host/service/BuildSettings;->getOemId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->oemId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/nuance/connect/store/FileStore;

    invoke-direct {v2, v0}, Lcom/nuance/connect/store/FileStore;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACManager$1;

    invoke-direct {v2, p0}, Lcom/nuance/swypeconnect/ac/ACManager$1;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;)V

    invoke-static {p1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->make(Landroid/content/Context;Lcom/nuance/connect/host/service/HostInterface;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    const-string v2, "AC-SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AC-SDK Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v4}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v4}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/ConfigService;

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACDeviceService;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-direct {v1, p0, v2}, Lcom/nuance/swypeconnect/ac/ACDeviceService;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/api/ConfigService;)V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/LanguageService;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;-><init>(Lcom/nuance/connect/api/LanguageService;Lcom/nuance/connect/store/PersistentDataStore;)V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACDlmService;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/DLMService;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACDlmService;-><init>(Lcom/nuance/connect/api/DLMService;Lcom/nuance/connect/store/PersistentDataStore;)V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACDlmService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->LIVING_LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/LivingLanguageService;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;-><init>(Lcom/nuance/connect/api/LivingLanguageService;Lcom/nuance/connect/store/PersistentDataStore;)V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->ADDON_DICTIONARIES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/AddonDictionariesService;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v3, v4}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/api/ResourcesService;

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v1, v2, v3, v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;-><init>(Lcom/nuance/connect/api/AddonDictionariesService;Lcom/nuance/connect/api/ResourcesService;Lcom/nuance/connect/store/PersistentDataStore;)V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACConfiguration;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v2, p0, v3}, Lcom/nuance/swypeconnect/ac/ACConfiguration;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/store/PersistentDataStore;)V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configuration:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v2, p0, v3}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/store/PersistentDataStore;)V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACLanguage;

    invoke-direct {v2, p0}, Lcom/nuance/swypeconnect/ac/ACLanguage;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;)V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/connect/host/service/BuildSettings;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    return-object v0
.end method

.method private checkPermission(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConnectClass()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "com.nuance.connect.service.ConnectClient"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private isConnectClientClassExist()Z
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnectClass()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private validApplicationId(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v1}, Lcom/nuance/connect/host/service/BuildSettings;->getAppKeyStarts()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v1}, Lcom/nuance/connect/host/service/BuildSettings;->getAppKeyStarts()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getACBuildDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getACVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configuration:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    return-object v0
.end method

.method protected getConnect()Lcom/nuance/connect/api/ConnectServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getLanguageSettings()Lcom/nuance/swypeconnect/ac/ACLanguage;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    return-object v0
.end method

.method public getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    return-object v0
.end method

.method public getOemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->oemId:Ljava/lang/String;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x69

    const-string v2, "Please call start()."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedTOS()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DEVICE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x68

    const-string v2, "Please Accept the TOS before requesting any services."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    return-object v0
.end method

.method public isConnectStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    return v0
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->refresh()V

    return-void
.end method

.method public registerConnectionCallback(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V
    .locals 2

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACManager$2;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swypeconnect/ac/ACManager$2;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/ConnectServiceManager;->registerConnectionCallback(Lcom/nuance/connect/api/ConnectionCallback;)V

    return-void
.end method

.method public retryConnection()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->retryConnection()V

    return-void
.end method

.method public setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;

    return-void
.end method

.method public shutdown()V
    .locals 4

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Shutdown ACManager"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v2}, Lcom/nuance/connect/api/ConnectServiceManager;->stop()V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACService;->shutdown()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/16 v8, 0x75

    iget-boolean v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectClientClassExist()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v6, 0x65

    const-string v7, "Connect Service is not available. Please verify your SDK setup."

    invoke-direct {v5, v6, v7}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_1
    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->applicationId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/nuance/swypeconnect/ac/ACManager;->validApplicationId(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v6, 0x6b

    const-string v7, "The application key is not valid."

    invoke-direct {v5, v6, v7}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_2
    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v5}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildExpiration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v5}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Checking time for expiration"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :try_start_0
    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v5}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    const-string v7, "T"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v4, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v6}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildExpiration()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->normalize(Z)J

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    now="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expires="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expired="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v6, 0x75

    const-string v7, "The SDK Trial has expired."

    invoke-direct {v5, v6, v7}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v5, Lcom/nuance/swypeconnect/ac/ACException;

    const-string v6, "The SDK Trial has expired."

    invoke-direct {v5, v8, v6}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v5

    :catch_1
    move-exception v3

    new-instance v5, Lcom/nuance/swypeconnect/ac/ACException;

    const-string v6, "The SDK Trial has expired."

    invoke-direct {v5, v8, v6}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_3
    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;

    if-nez v5, :cond_4

    new-instance v5, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v6, 0x6a

    const-string v7, "You must specify core versions to start AC-SDK."

    invoke-direct {v5, v6, v7}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_4
    const-string v5, "android.permission.INTERNET"

    invoke-direct {p0, v5}, Lcom/nuance/swypeconnect/ac/ACManager;->checkPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v5}, Lcom/nuance/swypeconnect/ac/ACManager;->checkPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-direct {p0, v5}, Lcom/nuance/swypeconnect/ac/ACManager;->checkPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    new-instance v5, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v6, 0x64

    const-string v7, "No network permissions were enabled. Please verify the Android manifest file."

    invoke-direct {v5, v6, v7}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_6
    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v5}, Lcom/nuance/connect/api/ConnectServiceManager;->start()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "ACManager.start() Started"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public unregisterConnectionCallback(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConnectionCallback;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/ConnectServiceManager;->unregisterConnectionCallback(Lcom/nuance/connect/api/ConnectionCallback;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
