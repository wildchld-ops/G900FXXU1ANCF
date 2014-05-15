.class public final Lcom/nuance/swypeconnect/ac/ACDlmService;
.super Lcom/nuance/swypeconnect/ac/ACService;
.source "ACDlmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;,
        Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;,
        Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;,
        Lcom/nuance/swypeconnect/ac/ACDlmService$ACDlmEventCallback;,
        Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;,
        Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmDb;,
        Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmDb;
    }
.end annotation


# instance fields
.field private alphaDlmDb:Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmDb;

.field private alphaDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;

.field private chineseDlmDb:Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmDb;

.field private chineseDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;

.field private koreanDlmDb:Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;

.field private koreanDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private service:Lcom/nuance/connect/api/DLMService;


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/api/DLMService;Lcom/nuance/connect/store/PersistentDataStore;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->log:Lcom/nuance/connect/util/Logger$Log;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/connect/api/DLMService;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmDb;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->alphaDlmDb:Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmDb;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->koreanDlmDb:Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swypeconnect/ac/ACDlmService;)Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmDb;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->chineseDlmDb:Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmDb;

    return-object v0
.end method


# virtual methods
.method public bindAlphaDlm(Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmDb;)Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->alphaDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x73

    const-string v3, "The Alpha DLM you are attempting to bind is already bound."

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->alphaDlmDb:Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmDb;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;

    invoke-direct {v1, p0}, Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;-><init>(Lcom/nuance/swypeconnect/ac/ACDlmService;)V

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->alphaDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDlmService$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDlmService$1;-><init>(Lcom/nuance/swypeconnect/ac/ACDlmService;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/api/DLMService;->registerDlmCallback(ILcom/nuance/connect/api/DLMService$DlmEventCallback;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->alphaDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;

    return-object v1
.end method

.method public bindChineseDlm(Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmDb;)Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->chineseDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x73

    const-string v3, "The Chinese DLM you are attempting to bind is already bound."

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->chineseDlmDb:Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmDb;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;

    invoke-direct {v1, p0}, Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;-><init>(Lcom/nuance/swypeconnect/ac/ACDlmService;)V

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->chineseDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDlmService$3;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDlmService$3;-><init>(Lcom/nuance/swypeconnect/ac/ACDlmService;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/api/DLMService;->registerDlmCallback(ILcom/nuance/connect/api/DLMService$DlmEventCallback;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->chineseDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;

    return-object v1
.end method

.method public bindKoreanDlm(Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;)Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->koreanDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x73

    const-string v3, "The Korean DLM you are attempting to bind is already bound."

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->koreanDlmDb:Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;

    invoke-direct {v1, p0}, Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;-><init>(Lcom/nuance/swypeconnect/ac/ACDlmService;)V

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->koreanDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDlmService$2;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDlmService$2;-><init>(Lcom/nuance/swypeconnect/ac/ACDlmService;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/api/DLMService;->registerDlmCallback(ILcom/nuance/connect/api/DLMService$DlmEventCallback;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->koreanDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;

    return-object v1
.end method

.method getName()Ljava/lang/String;
    .locals 1

    const-string v0, "DLM"

    return-object v0
.end method

.method protected getService()Lcom/nuance/connect/api/DLMService;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;

    return-object v0
.end method

.method public releaseAlphaDlm()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->alphaDlmDb:Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmDb;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->alphaDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DLMService;->unregisterDlmCallback(I)V

    return-void
.end method

.method public releaseChineseDlm()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->chineseDlmDb:Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmDb;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->chineseDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DLMService;->unregisterDlmCallback(I)V

    return-void
.end method

.method public releaseKoreanDlm()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->koreanDlmDb:Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmDb;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->koreanDlmEventCallback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACKoreanDlmEventCallback;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDlmService;->service:Lcom/nuance/connect/api/DLMService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DLMService;->unregisterDlmCallback(I)V

    return-void
.end method

.method shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->releaseAlphaDlm()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->releaseChineseDlm()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->releaseKoreanDlm()V

    return-void
.end method
