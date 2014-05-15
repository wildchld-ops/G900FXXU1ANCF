.class public Lcom/nuance/swypeconnect/ac/ACLegalDocuments;
.super Ljava/lang/Object;
.source "ACLegalDocuments.java"


# instance fields
.field private service:Lcom/nuance/connect/api/DocumentService;

.field private settings:Lcom/nuance/connect/internal/UserSettings;


# direct methods
.method protected constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/store/PersistentDataStore;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DocumentService;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->service:Lcom/nuance/connect/api/DocumentService;

    return-void
.end method


# virtual methods
.method public getTOS()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->integratorHasShownTOS()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->service:Lcom/nuance/connect/api/DocumentService;

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DocumentService;->getDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTOSVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->service:Lcom/nuance/connect/api/DocumentService;

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DocumentService;->getDocumentRevisionNumber(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userAcceptedTOS()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->hasIntegratorShownTOS()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x72

    const-string v2, "You must call getTOS before calling userAcceptedTOS()"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->service:Lcom/nuance/connect/api/DocumentService;

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DocumentService;->acceptDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;)V

    return-void
.end method

.method public userHasAcceptedTOS()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->settings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isTOSAccepted()Z

    move-result v0

    return v0
.end method
