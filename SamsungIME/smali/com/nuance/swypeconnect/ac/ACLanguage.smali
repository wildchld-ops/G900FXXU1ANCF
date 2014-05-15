.class public Lcom/nuance/swypeconnect/ac/ACLanguage;
.super Ljava/lang/Object;
.source "ACLanguage.java"


# instance fields
.field private config:Lcom/nuance/connect/api/ConfigService;

.field private manager:Lcom/nuance/swypeconnect/ac/ACManager;


# direct methods
.method protected constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConfigService;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->config:Lcom/nuance/connect/api/ConfigService;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-void
.end method


# virtual methods
.method public getActiveLanguages()[I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getActiveLanguages()[I

    move-result-object v0

    return-object v0
.end method

.method public onFinishInput()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v2, "DLM"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACDlmService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->getService()Lcom/nuance/connect/api/DLMService;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/connect/api/DLMService;->resume()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v2, "DLM"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACDlmService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->getService()Lcom/nuance/connect/api/DLMService;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/connect/api/DLMService;->yield()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public setActiveLanguages([I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setActiveLanguages([I)V

    return-void
.end method

.method public setActiveLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setActiveLocale(Ljava/util/Locale;)V

    return-void
.end method
