.class public Lcom/nuance/connect/service/manager/UpgradeManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;
.source "UpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/UpgradeManager$3;
    }
.end annotation


# static fields
.field public static final ALARM_UNIQUE_ID:I = 0x4808ba5

.field public static final COMMAND_CHECK:Ljava/lang/String; = "check"

.field public static final COMMAND_FAMILY:Ljava/lang/String; = null

.field public static final COMMAND_VERSION:I = 0x2

.field public static final MANAGER_NAME:Ljava/lang/String; = null

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages; = null

.field public static final SETTINGS_DOWNLOAD_NOW_PREFERENCE:Ljava/lang/String; = "upgradeDownloadNowPreference"

.field public static final SETTINGS_INSTALL_NOW_PREFERENCE:Ljava/lang/String; = "upgradeInstallnowPreference"

.field public static final UPGRADE_FILE_PREFERENCE:Ljava/lang/String; = "upgradeFilePreference"

.field public static final UPGRADE_FILE_SD_PREFERENCE:Ljava/lang/String; = "upgradeFileSDPreference"

.field public static final UPGRADE_FILE_SIZE:Ljava/lang/String; = "upgradeFileSize"

.field public static final UPGRADE_FILE_TRANSACTION_PREFERENCE:Ljava/lang/String; = "upgradeFileTransactionPreference"


# instance fields
.field protected apkURL:Ljava/lang/String;

.field private downloadNow:Z

.field private hasConnectivity:Z

.field private installNow:Z

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private networkListener:Lcom/nuance/connect/system/NetworkListener;

.field private possibleUpgrade:Z

.field private upgradeAPK:Ljava/io/File;

.field private upgradeAPKChecksum:Ljava/lang/String;

.field private upgradeNotified:Z

.field private upgradeSDAPK:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->UPGRADE:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/UpgradeManager;->COMMAND_FAMILY:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/manager/UpgradeManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/UpgradeManager;->MANAGER_NAME:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPGRADE_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPGRADE_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_POSSIBLE_UPGRADE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CHECK_UPGRADE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPGRADE_DOWNLOAD_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/UpgradeManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->possibleUpgrade:Z

    new-instance v1, Lcom/nuance/connect/service/manager/UpgradeManager$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/UpgradeManager$1;-><init>(Lcom/nuance/connect/service/manager/UpgradeManager;)V

    iput-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->networkListener:Lcom/nuance/connect/system/NetworkListener;

    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeNotified:Z

    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const/4 v1, 0x2

    iput v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->version:I

    sget-object v1, Lcom/nuance/connect/service/manager/UpgradeManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    sget-object v1, Lcom/nuance/connect/service/manager/UpgradeManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/UpgradeManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "check"

    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "download"

    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "ack"

    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "status"

    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    iput-boolean v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "upgradeDownloadNowPreference"

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    const-string v1, "upgradeInstallnowPreference"

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    return-void
.end method

.method static synthetic access$002(Lcom/nuance/connect/service/manager/UpgradeManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->hasConnectivity:Z

    return p1
.end method

.method private disableAutoDownload()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "upgradeDownloadNowPreference"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    return-void
.end method

.method private loadPreferences()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "UpgradeManager.loadPreferences()"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    const-string v5, "upgradeFilePreference"

    invoke-interface {v1, v5, v8}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "upgradeFileSDPreference"

    invoke-interface {v1, v5, v8}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "upgradeDownloadNowPreference"

    invoke-interface {v1, v5, v7}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    const-string v5, "upgradeInstallnowPreference"

    invoke-interface {v1, v5, v7}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    const-string v5, "upgradeFileTransactionPreference"

    invoke-interface {v1, v5, v8}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v5, "upgradeFileSDPreference"

    invoke-interface {v1, v5}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    :cond_0
    if-eqz v2, :cond_2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v5, :cond_2

    :try_start_1
    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->upgrade()V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Unable to delete APK from SD card"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Security Exception while trying to read upgrade file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    goto :goto_1
.end method

.method private processUpgradeAPKResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "UpgradeManager.processUpgradeAPKResponse()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPKChecksum:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->ackUpgradeFile()V

    return-void
.end method

.method private savePreferences()V
    .locals 7

    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "UpgradeManager.savePreferences() "

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, "upgradeFileTransactionPreference"

    invoke-interface {v3, v4}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    const-string v4, "upgradeFilePreference"

    invoke-interface {v3, v4, v1}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "upgradeFileSize"

    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    const-string v4, "upgradeFileSDPreference"

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_3
    const-string v4, "upgradeDownloadNowPreference"

    iget-boolean v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    const-string v4, "upgradeInstallnowPreference"

    iget-boolean v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpgradeManager.savePreferences() UPGRADE_FILE_TRANSACTION_PREFERENCE: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpgradeManager.savePreferences() UPGRADE_FILE_PREFERENCE: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpgradeManager.savePreferences() UPGRADE_FILE_SD_PREFERENCE: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Security Exception while trying to read upgrade file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    const-string v4, "upgradeFileTransactionPreference"

    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_3
    const-string v4, "upgradeFilePreference"

    invoke-interface {v3, v4}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    const-string v4, "upgradeFileSize"

    invoke-interface {v3, v4}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_4
    const-string v4, "upgradeFileSDPreference"

    invoke-interface {v3, v4}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    goto/16 :goto_3
.end method

.method private sendHostUpgradeStatus()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPGRADE_DOWNLOAD_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPGRADE_DOWNLOAD_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    goto :goto_0
.end method

.method private sendSDCardNotification()V
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v0, "com_nuance_connect_error_out_of_disc_space"

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "com_nuance_connect_notification_unspecified_failure"

    :cond_0
    :goto_0
    new-instance v2, Lcom/nuance/connect/util/StatusBarNotification$Builder;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    invoke-virtual {v2, v0}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/connect/util/StatusBarNotification;

    return-void

    :cond_1
    const-string v2, "bad_removal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "nofs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const-string v0, "com_nuance_connect_notification_unspecified_failure"

    goto :goto_0
.end method

.method private upgradeSwype()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v17, v0

    const-string v18, "UpgradeManager.upgradeSwype()"

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v17

    const-string v18, "upgradeInstallnowPreference"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/download/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to create download directory: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; Can\'t upgrade this build"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendSDCardNotification()V

    :goto_0
    return-void

    :cond_0
    new-instance v17, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v17, 0x400

    :try_start_2
    move/from16 v0, v17

    new-array v2, v0, [B

    const/4 v14, 0x0

    :goto_1
    invoke-virtual {v13, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v2, v0, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v17

    move-object v12, v13

    move-object v8, v9

    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    throw v17
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_0
    move-exception v4

    :goto_3
    const/4 v7, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "New File goes here: ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] actual: ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "new file actual actual: ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] Worked: ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->deleteOnExit()V

    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/connect/service/ConnectClient;->onPrepareForUpgrade()V

    new-instance v11, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    const-string v17, "application/vnd.android.package-archive"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v17, 0x1080

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/nuance/connect/service/ConnectClient;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v12, v13

    goto/16 :goto_4

    :catch_1
    move-exception v10

    move-object v12, v13

    move-object v8, v9

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendSDCardNotification()V

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v17, v0

    const-string v18, "Unable to create download file on SDCARD when it was missing, we can\'t upgrade this build"

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_2
    move-exception v10

    goto :goto_5

    :catch_3
    move-exception v4

    move-object v12, v13

    move-object v8, v9

    goto/16 :goto_3

    :catchall_1
    move-exception v17

    goto/16 :goto_2

    :catchall_2
    move-exception v17

    move-object v8, v9

    goto/16 :goto_2
.end method


# virtual methods
.method public ackUpgradeFile()V
    .locals 4

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "UpgradeManager.ackUpgradeFile()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPKChecksum:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPKChecksum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "10"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPKChecksum:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ack"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/connect/service/manager/UpgradeManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "UpgradeManager has recieved an alarm."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->hasName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->checkForUpgrade()V

    :cond_0
    return-void
.end method

.method public checkForUpgrade()V
    .locals 3

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "UpgradeManager.checkForUpgrade()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Not running check for upgrade since we already know about our upgrade."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "check"

    sget-object v2, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/manager/UpgradeManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getConnectivity()Lcom/nuance/connect/system/Connectivity;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->networkListener:Lcom/nuance/connect/system/NetworkListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/Connectivity;->unregisterNetworkListener(Lcom/nuance/connect/system/NetworkListener;)V

    invoke-super {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->destroy()V

    return-void
.end method

.method public fetchAPK()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "UpgradeManager.fetchAPK()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->unwindInstall()V

    :goto_0
    return-void

    :cond_1
    iput-boolean v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "download"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "total"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPGRADE_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2, v3, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    const-string v2, "download"

    sget-object v3, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v2, v3}, Lcom/nuance/connect/service/manager/UpgradeManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    iput-object v2, v1, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    const-string v2, "GET"

    iput-object v2, v1, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    iput-boolean v4, v1, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    iput-boolean v4, v1, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    iput-boolean v5, v1, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    iput-boolean v4, v1, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    iput-boolean v5, v1, Lcom/nuance/connect/service/comm/Command;->wifiOnly:Z

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    goto :goto_0
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/nuance/connect/internal/common/ManagerService;->UPGRADE:Lcom/nuance/connect/internal/common/ManagerService;

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
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getConnectivity()Lcom/nuance/connect/system/Connectivity;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->networkListener:Lcom/nuance/connect/system/NetworkListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/Connectivity;->registerNetworkListener(Lcom/nuance/connect/system/NetworkListener;)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "UpgradeManager needs to be modified for changes to service-lifecycle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCancel(Lcom/nuance/connect/service/comm/Command;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->onCancel(Lcom/nuance/connect/service/comm/Command;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->unwindInstall()V

    :cond_0
    return-void
.end method

.method public onDownloadStatusResponse(Lcom/nuance/connect/service/comm/Command;II)V
    .locals 5

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "download"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "download"

    const/high16 v2, 0x42c8

    int-to-float v3, p2

    int-to-float v4, p3

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "total"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPGRADE_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    if-gez p2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->unwindInstall()V

    :cond_0
    return-void
.end method

.method public onFileResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "UpgradeManager.onFileResponse()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->onFileResponse(Lcom/nuance/connect/service/comm/Response;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/UpgradeManager;->processUpgradeAPKResponse(Lcom/nuance/connect/service/comm/Response;)V

    :cond_0
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/service/manager/UpgradeManager$3;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "UpgradeManager.onHandleMessage(MESSAGE_CLIENT_UPGRADE_DOWNLOAD)"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->fetchAPK()V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "UpgradeManager.onHandleMessage(MESSAGE_CLIENT_UPGRADE_INSTALL)"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->upgrade()V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "UpgradeManager.onHandleMessage(MESSAGE_POSSIBLE_UPGRADE)"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->possibleSwypeUpgrade()V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "UpgradeManager.onHandleMessage(MESSAGE_CHECK_UPGRADE)"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v2, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Marking upgrade for later, we haven\'t started"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeNotified:Z

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->checkForUpgrade()V

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "UpgradeManager.onHandleMessage(MESSAGE_CLIENT_UPGRADE_DOWNLOAD_CANCEL)"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->unwindInstall()V

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "UpgradeManager.onIOExceptionResponse()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpgradeManager.onIOExceptionResponse() unable to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->checkForUpgrade()V

    goto :goto_0
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpgradeManager.onResponse(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Transaction Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "check"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/UpgradeManager;->processCheckResponse(Lcom/nuance/connect/service/comm/Response;)V

    :goto_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/UpgradeManager;->processAckResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/UpgradeManager;->processStatusResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server returned unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public possibleSwypeUpgrade()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->possibleUpgrade:Z

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->loadPreferences()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->swypeHasUpgraded()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "This install is not an upgrade, false alarm"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected processAckResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpgradeManager.processAckResponse() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_RETRIEVE_MESSAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSwype()V

    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPGRADE_DOWNLOAD_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->disableAutoDownload()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->unwindInstall()V

    goto :goto_1
.end method

.method protected processCheckResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "UpgradeManager.processCheckResponse()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->fetchAPK()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPGRADE_DOWNLOAD_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :cond_1
    return-void
.end method

.method protected processStatusResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "UpgradeManager.processStatusResponse()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {p1}, Lcom/nuance/connect/service/comm/Response;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v2, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "recieved a response but no status was sent for it."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x201

    if-ne v2, v3, :cond_3

    iget v2, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSwype()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->unwindInstall()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1f6

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1f5

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    goto :goto_0
.end method

.method public rebind()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "UpgradeManager.rebind()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendHostUpgradeStatus()V

    :cond_0
    return-void
.end method

.method public sendStatus(ILjava/lang/String;)V
    .locals 8

    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v6, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v5, v6}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UpgradeManager.sendStatus() -- Status: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v5, "6"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "status"

    sget-object v6, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v5, v6, v1}, Lcom/nuance/connect/service/manager/UpgradeManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;Ljava/util/HashMap;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iput-object p2, v0, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    :goto_0
    return-void

    :cond_0
    move v3, p1

    move-object v4, p2

    new-instance v2, Lcom/nuance/connect/service/manager/UpgradeManager$2;

    invoke-direct {v2, p0, v3, v4}, Lcom/nuance/connect/service/manager/UpgradeManager$2;-><init>(Lcom/nuance/connect/service/manager/UpgradeManager;ILjava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public start()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->loadPreferences()V

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->downloadNow:Z

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->installNow:Z

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->possibleUpgrade:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->possibleSwypeUpgrade()V

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeNotified:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->checkForUpgrade()V

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeNotified:Z

    :cond_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendHostUpgradeStatus()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->managerStartComplete()V

    return-void
.end method

.method public swypeHasUpgraded()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "upgradeManager.swypeHasUpgraded() - cleaning up now"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->onPostUpgrade()V

    const/16 v1, 0x1f4

    iget-object v2, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendStatus(ILjava/lang/String;)V

    iput-object v3, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    iput-object v3, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    iput-object v3, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SETTINGS_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Unable to delete APK from SD card"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Unable to delete APK"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public swypeUpgradeCanceled()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "upgradeManager.swypeUpgradeCanceled()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/16 v0, 0x1f6

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendStatus(ILjava/lang/String;)V

    return-void
.end method

.method protected unwindInstall()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpgradeManager.unwindInstall() unable to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->disableAutoDownload()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->checkForUpgrade()V

    return-void
.end method

.method public upgrade()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "UpgradeManager.upgrade()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->savePreferences()V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager;->hasConnectivity:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x201

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->transactionId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendStatus(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/UpgradeManager;->upgradeSwype()V

    goto :goto_0
.end method
