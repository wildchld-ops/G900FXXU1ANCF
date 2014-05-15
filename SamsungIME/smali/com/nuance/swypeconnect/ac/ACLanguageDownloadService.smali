.class public final Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
.super Lcom/nuance/swypeconnect/ac/ACService;
.source "ACLanguageDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;,
        Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;
    }
.end annotation


# static fields
.field private static final ALM_INSTALLED:Ljava/lang/String; = "ALM_INSTALLED"

.field private static final DOWNLOADED_LANGUAGES:Ljava/lang/String; = "AC_Language_Service_Downloaded_Languages"

.field private static final LANGUAGE_DL:Ljava/lang/String; = "LANGUAGE_DL"

.field private static final LANGUAGE_ID:Ljava/lang/String; = "LANGUAGE_ID"

.field private static final PREINSTALLED:Ljava/lang/String; = "PREINSTALLED"

.field public static final REASON_FAILED_HTTP:I = 0x0

.field public static final REASON_FAILED_MAX_RETRY:I = 0x1

.field public static final REASON_NETWORK_TIMEOUT:I = 0x4

.field public static final REASON_USER_CANCELED:I = 0x3

.field private static final VERSION:Ljava/lang/String; = "VERSION"


# instance fields
.field private final downloaded:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final languageCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;",
            "Lcom/nuance/connect/api/LanguageService$ListCallback;",
            ">;"
        }
    .end annotation
.end field

.field languageService:Lcom/nuance/connect/api/LanguageService;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final store:Lcom/nuance/connect/store/PersistentDataStore;

.field private final supportedLangs:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/api/LanguageService;Lcom/nuance/connect/store/PersistentDataStore;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageCallbacks:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string v1, "AC_Language_Service_Downloaded_Languages"

    invoke-interface {p2, v1}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->save()V

    return-void
.end method

.method private addSupportedLanguage(Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V
    .locals 7

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "LANGUAGE_DL"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isPreinstalled(I)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v6

    invoke-direct {p0, v5, v3, v6, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->generateSupportedHashMap(Ljava/lang/Integer;ZIZ)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "VERSION"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_2
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v6

    invoke-direct {p0, v5, v3, v6, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->generateSupportedHashMap(Ljava/lang/Integer;ZIZ)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method private addSupportedLanguage(Ljava/lang/Integer;[Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V
    .locals 8

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz p2, :cond_3

    array-length v7, p2

    if-lez v7, :cond_3

    const/4 v5, -0x1

    const/4 v2, 0x0

    move-object v0, p2

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_1
    const/4 v7, -0x1

    if-le v5, v7, :cond_1

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v5

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-direct {p0, p1, v6, v5, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->generateSupportedHashMap(Ljava/lang/Integer;ZIZ)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v7, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private generateSupportedHashMap(Ljava/lang/Integer;ZIZ)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "ZIZ)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "LANGUAGE_ID"

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PREINSTALLED"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VERSION"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ALM_INSTALLED"

    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private isDownloaded(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isPreinstalled(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "PREINSTALLED"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSupported(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isUpdateAvailable(II)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "LANGUAGE_DL"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "LANGUAGE_DL"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "LANGUAGE_DL"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    :goto_1
    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isPreinstalled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isDownloaded(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "ALM_INSTALLED"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    :cond_1
    :goto_2
    return v1

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "VERSION"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "VERSION"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "VERSION"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_4
    if-le p2, v0, :cond_5

    move v1, v4

    :goto_3
    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isDownloaded(I)Z

    move-result v2

    if-eqz v2, :cond_8

    if-lez v0, :cond_1

    if-le p2, v0, :cond_7

    move v1, v4

    :goto_4
    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private save()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string v1, "AC_Language_Service_Downloaded_Languages"

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_1

    array-length v3, p2

    new-array v2, v3, [Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    const/4 v0, 0x0

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    aget-object v3, p2, v0

    invoke-static {v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->load(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addSupportedLanguage(Ljava/lang/Integer;[Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V

    :cond_1
    return-void
.end method

.method public addExistingLanguage(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->load(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addSupportedLanguage(Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V

    return-void
.end method

.method public addSupportedLanguage(Ljava/lang/Integer;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-direct {p0, p1, v2, v1, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->generateSupportedHashMap(Ljava/lang/Integer;ZIZ)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelDownload(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x6f

    const-string v3, "The language you requested is not supported."

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v1, p1}, Lcom/nuance/connect/api/LanguageService;->cancelDownload(I)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "downloadLanguage id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " callback="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isSupported(I)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v7, 0x6f

    const-string v8, "The language you requested is not supported."

    invoke-direct {v6, v7, v8}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v6

    :cond_0
    const/4 v4, -0x1

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v6}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v3}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v6

    if-ne v6, p1, :cond_1

    invoke-virtual {v3}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v4

    :cond_2
    move v5, v4

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;

    invoke-direct {v0, p0, p2, p1, v5}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;-><init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;II)V

    :try_start_0
    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v6, p1, v0}, Lcom/nuance/connect/api/LanguageService;->downloadLanguage(ILcom/nuance/connect/api/LanguageService$DownloadCallback;)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v6, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v7, 0x6e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The language you requested is not available: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v6
.end method

.method public downloadLanguageFlavor(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/16 v9, 0x6e

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "downloadLanguageFlavor id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " callback="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isSupported(I)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v7, 0x6f

    const-string v8, "The language flavor you requested is not supported."

    invoke-direct {v6, v7, v8}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isFlavorAvailable(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Lcom/nuance/swypeconnect/ac/ACException;

    const-string v7, "the language flavor you requested is not avaialable"

    invoke-direct {v6, v9, v7}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v6

    :cond_1
    const/4 v4, -0x1

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v6}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbFlavorList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;

    invoke-virtual {v3}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->getXT9LanguageId()I

    move-result v6

    if-ne v6, p1, :cond_2

    invoke-virtual {v3}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->getFlavor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->getVersion()I

    move-result v4

    :cond_3
    move v5, v4

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;

    invoke-direct {v0, p0, p3, p1, v5}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;-><init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;II)V

    :try_start_0
    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v6, p1, p2, v0}, Lcom/nuance/connect/api/LanguageService;->downloadLanguage(ILjava/lang/String;Lcom/nuance/connect/api/LanguageService$DownloadCallback;)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v6, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The language you requested is not available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v9, v7}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v6
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v3}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isPreinstalled(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isDownloaded(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDownloadedLanguages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v4}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v3}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isSupported(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isDownloaded(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    const-string v0, "LANGUAGE"

    return-object v0
.end method

.method public getUpdatableLanguages()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v3}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isUpdateAvailable(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Language not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public isFlavorAvailable(ILjava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v3}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbFlavorList()Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v3}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbFlavorList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->getXT9LanguageId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->getFlavor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isLanguageListAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->isLanguageListAvailable()Z

    move-result v0

    return v0
.end method

.method public languageUninstalled(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6f

    const-string v2, "The language you requested is not supported."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->save()V

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/LanguageService;->languageUninstalled(I)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "LANGUAGE_DL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;)V
    .locals 2

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$3;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$3;-><init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/LanguageService;->registerCallback(Lcom/nuance/connect/api/LanguageService$ListCallback;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeSupportedLanguage(Ljava/lang/Integer;)V
    .locals 4

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->save()V

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/api/LanguageService;->cancelDownload(I)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSupportedLanguage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->unregisterCallbacks()V

    return-void
.end method

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$ListCallback;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/LanguageService;->unregisterCallback(Lcom/nuance/connect/api/LanguageService$ListCallback;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->unregisterCallbacks()V

    return-void
.end method
