.class public Lcom/nuance/connect/internal/common/ConnectAccount;
.super Ljava/lang/Object;
.source "ConnectAccount.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;,
        Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;,
        Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_EMAIL:I = 0x1

.field private static final serialVersionUID:J = 0x21410eb073857bcL


# instance fields
.field private accountId:Ljava/lang/String;

.field private accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

.field private creationMethod:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

.field private deviceCount:I

.field private final devices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;",
            ">;"
        }
    .end annotation
.end field

.field private existsOnServer:Z

.field private identifier:Ljava/lang/String;

.field private identifierForDisplay:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->existsOnServer:Z

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    iput-object p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/common/ConnectAccount;->setIdentifier(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->identifierForDisplay:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->type:I

    iput v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->deviceCount:I

    iput-object p4, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->creationMethod:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    return-void
.end method

.method private setIdentifier(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->identifier:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;)V
    .locals 3

    iget-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckin()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->setLastCheckin(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addDevices(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->addDevice(Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;)V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    return-object v0
.end method

.method public getCreationMethod()Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->creationMethod:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    return-object v0
.end method

.method public getDeviceCount()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->deviceCount:I

    return v0
.end method

.method public getDevices()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    return-object v0
.end method

.method public getExistsOnServer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->existsOnServer:Z

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifierForDisplay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->identifierForDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->type:I

    return v0
.end method

.method public isDeleted()Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountId:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    :cond_0
    iput-boolean v2, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->existsOnServer:Z

    iput v2, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->deviceCount:I

    return-void
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountId:Ljava/lang/String;

    return-void
.end method

.method public setAccountState(Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    return-void
.end method

.method public setDeviceCount(I)V
    .locals 0

    iput p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->deviceCount:I

    return-void
.end method

.method public setExistsOnServer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->existsOnServer:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Account [ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "existsOnServer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->existsOnServer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "creationMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->creationMethod:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accountState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deviceCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->deviceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public verify()V
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount;->accountState:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    return-void
.end method
