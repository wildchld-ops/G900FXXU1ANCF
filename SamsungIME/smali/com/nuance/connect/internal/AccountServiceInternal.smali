.class Lcom/nuance/connect/internal/AccountServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;
.source "AccountServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/api/AccountService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/AccountServiceInternal$2;
    }
.end annotation


# static fields
.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;


# instance fields
.field private final accounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/common/ConnectAccount;",
            ">;"
        }
    .end annotation
.end field

.field private activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private hasKnownAccounts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_ANDROID_ACCOUNTS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_LIST_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_VERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_DEVICE_NAME:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/AccountServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    new-instance v0, Lcom/nuance/connect/internal/AccountServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/AccountServiceInternal$1;-><init>(Lcom/nuance/connect/internal/AccountServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    iput-object p1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/AccountServiceInternal;Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/AccountServiceInternal;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100()[Lcom/nuance/connect/internal/common/InternalMessages;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/AccountServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private checkForKnownAccounts(I)V
    .locals 4

    iget-object v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getExistsOnServer()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->hasKnownAccounts:Z

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->hasKnownAccounts:Z

    goto :goto_0
.end method

.method private findActiveAccount()Lcom/nuance/connect/internal/common/ConnectAccount;
    .locals 5

    iget-object v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 13

    sget-object v10, Lcom/nuance/connect/internal/AccountServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v11, p2, Landroid/os/Message;->what:I

    invoke-static {v11}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v9, 0x1

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "DEFAULT_KEY"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "DEFAULT_KEY"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v11, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_SYSTEM_DATA:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v10, v11}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/connect/host/service/HostSystemData;

    invoke-interface {v10}, Lcom/nuance/connect/host/service/HostSystemData;->getAccountsForBackupSync()[Landroid/accounts/Account;

    move-result-object v3

    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v0, v3, v5

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    const-string v10, "DEFAULT_KEY"

    invoke-virtual {v4, v10, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v10

    sget-object v11, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_ANDROID_ACCOUNTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v10, v11, v4}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "DEFAULT_KEY"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_4

    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/nuance/connect/internal/AccountServiceInternal;->findActiveAccount()Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v10

    iput-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/nuance/connect/internal/AccountServiceInternal;->checkForKnownAccounts(I)V

    :goto_2
    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string v11, "com.nuance.connect.ACCOUNT_STATUS_CHANGE"

    const-string v12, "com.nuance.connect.TYPE_ACCOUNT_DELETED"

    invoke-virtual {v10, v11, v12}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_3
    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string v11, "com.nuance.connect.DATA_AVAILABLE"

    const-string v12, "com.nuance.connect.TYPE_ACCOUNT_DATA"

    invoke-virtual {v10, v11, v12}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_0

    :cond_4
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->hasKnownAccounts:Z

    goto :goto_2

    :pswitch_2
    const-string v10, "SUCCESS"

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "DEFAULT_KEY"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string v11, "com.nuance.connect.ACCOUNT_STATUS_CHANGE"

    const-string v12, "com.nuance.connect.TYPE_ACCOUNT_VERIFIED"

    invoke-virtual {v10, v11, v12}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_0

    :cond_5
    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string v11, "com.nuance.connect.ACCOUNT_STATUS_CHANGE"

    const-string v12, "com.nuance.connect.TYPE_ACCOUNT_INVALID_CODE"

    invoke-virtual {v10, v11, v12}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_0

    :pswitch_3
    const-string v7, "unknown device"

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "DEFAULT_KEY"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    new-instance v8, Lcom/nuance/connect/util/StringLookupDecorator;

    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "DEFAULT_KEY"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Lcom/nuance/connect/util/StringLookupDecorator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/nuance/connect/util/StringLookupDecorator;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_6
    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v10

    sget-object v11, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_DEVICE_NAME:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v10, v11, v7}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setActiveAccount(ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-static {p2}, Lcom/nuance/connect/util/StringUtils;->normalizeEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    iget-object v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v3, v4}, Lcom/nuance/connect/internal/common/ConnectAccount;->setAccountState(Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;)V

    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-nez v3, :cond_2

    new-instance v3, Lcom/nuance/connect/internal/common/ConnectAccount;

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;->USER_CREATED:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    invoke-direct {v3, v5, p2, p1, v4}, Lcom/nuance/connect/internal/common/ConnectAccount;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;)V

    iput-object v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    iget-object v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v3, v4}, Lcom/nuance/connect/internal/common/ConnectAccount;->setAccountState(Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public deleteAccount(Z)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_DELETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    return-void
.end method

.method public getActiveAccount()Lcom/nuance/connect/internal/common/ConnectAccount;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceNameFromId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v1, ""

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getEmailAccounts()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v4

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifierForDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifierForDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifierForDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v4

    if-ne v4, v5, :cond_3

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getExistsOnServer()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifierForDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v5, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->hasKnownAccounts:Z

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getHasKnownAccounts()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->hasKnownAccounts:Z

    return v0
.end method

.method public getRegisteredAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifierForDisplay()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemEmailAccounts()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v8, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_SYSTEM_DATA:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v7, v8}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/connect/host/service/HostSystemData;

    invoke-interface {v7}, Lcom/nuance/connect/host/service/HostSystemData;->getAccountsForBackupSync()[Landroid/accounts/Account;

    move-result-object v1

    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    move-object v2, v1

    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v2, v5

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public isAccountKnownAccount(ILjava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/nuance/connect/util/StringUtils;->normalizeEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getExistsOnServer()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isAccountRegistered()Z
    .locals 9

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v7}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v7

    sget-object v8, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    :cond_0
    move v7, v4

    :goto_0
    return v7

    :cond_1
    iget-object v7, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-nez v7, :cond_0

    new-instance v6, Lcom/nuance/connect/store/FileStore;

    iget-object v7, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v7}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppFilesFolder()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/nuance/connect/store/FileStore;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_0
    const-string v7, "account_ACCOUNT"

    invoke-virtual {v6, v7}, Lcom/nuance/connect/store/FileStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/Map;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v7

    sget-object v8, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v7

    sget-object v8, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public isAccountRegisteredAndVerified()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isValidEmail(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public refreshDevices()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REFRESH_DEVICES:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    return-void
.end method

.method public registerAccount(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/AccountServiceInternal;->setActiveAccount(ILjava/lang/String;)V

    return-void
.end method

.method public registerEmailAccount(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/AccountServiceInternal;->isValidEmail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/nuance/connect/internal/AccountServiceInternal;->registerAccount(ILjava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendReverify()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REVERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    return-void
.end method

.method public setDelayedRegistrationAlert()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_SET_DELAYED_REGISTRATION_ALERT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    return-void
.end method

.method public unlinkDevice(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_UNLINK_DEVICE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getIsThisDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string v3, "com.nuance.connect.ACCOUNT_STATUS_CHANGE"

    const-string v4, "com.nuance.connect.TYPE_ACCOUNT_DELETED"

    invoke-virtual {v2, v3, v4}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public validateAccount(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_VERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    return-void
.end method
