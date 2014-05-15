.class public Lcom/fido/android/framework/agent/Fido;
.super Ljava/lang/Object;
.source "Fido.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fido/android/framework/agent/Fido$Connection;,
        Lcom/fido/android/framework/agent/Fido$RequestException;,
        Lcom/fido/android/framework/agent/Fido$ServiceException;,
        Lcom/fido/android/framework/agent/Fido$Response;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mFido:Lcom/fido/android/framework/agent/Fido;

.field private static mResultTypeValues:[Lcom/fido/android/framework/agent/api/ResultType;


# instance fields
.field private mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

.field private mFidoReconnectedHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/fido/android/framework/agent/Fido;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/fido/android/framework/agent/api/ResultType;->values()[Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v0

    sput-object v0, Lcom/fido/android/framework/agent/Fido;->mResultTypeValues:[Lcom/fido/android/framework/agent/api/ResultType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/fido/android/framework/agent/Fido$1;

    invoke-direct {v0, p0}, Lcom/fido/android/framework/agent/Fido$1;-><init>(Lcom/fido/android/framework/agent/Fido;)V

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoReconnectedHandler:Landroid/os/Handler;

    return-void
.end method

.method public static Instance()Lcom/fido/android/framework/agent/Fido;
    .locals 1

    sget-object v0, Lcom/fido/android/framework/agent/Fido;->mFido:Lcom/fido/android/framework/agent/Fido;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fido/android/framework/agent/Fido;

    invoke-direct {v0}, Lcom/fido/android/framework/agent/Fido;-><init>()V

    sput-object v0, Lcom/fido/android/framework/agent/Fido;->mFido:Lcom/fido/android/framework/agent/Fido;

    :cond_0
    sget-object v0, Lcom/fido/android/framework/agent/Fido;->mFido:Lcom/fido/android/framework/agent/Fido;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fido/android/framework/agent/Fido;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Lcom/fido/android/framework/agent/Fido;
    .locals 1

    sget-object v0, Lcom/fido/android/framework/agent/Fido;->mFido:Lcom/fido/android/framework/agent/Fido;

    return-object v0
.end method

.method static synthetic access$300()[Lcom/fido/android/framework/agent/api/ResultType;
    .locals 1

    sget-object v0, Lcom/fido/android/framework/agent/Fido;->mResultTypeValues:[Lcom/fido/android/framework/agent/api/ResultType;

    return-object v0
.end method

.method private fido()Lcom/fido/android/framework/agent/Fido$Connection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fido/android/framework/agent/Fido$ServiceException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    #getter for: Lcom/fido/android/framework/agent/Fido$Connection;->mFidoService:Lcom/fido/android/framework/service/IFidoService;
    invoke-static {v1}, Lcom/fido/android/framework/agent/Fido$Connection;->access$100(Lcom/fido/android/framework/agent/Fido$Connection;)Lcom/fido/android/framework/service/IFidoService;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    #getter for: Lcom/fido/android/framework/agent/Fido$Connection;->mFidoService:Lcom/fido/android/framework/service/IFidoService;
    invoke-static {v1}, Lcom/fido/android/framework/agent/Fido$Connection;->access$100(Lcom/fido/android/framework/agent/Fido$Connection;)Lcom/fido/android/framework/service/IFidoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/fido/android/framework/service/IFidoService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lcom/fido/android/framework/agent/Fido;->mFido:Lcom/fido/android/framework/agent/Fido;

    invoke-virtual {v1}, Lcom/fido/android/framework/agent/Fido;->uninit()V

    :cond_2
    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/fido/android/framework/agent/Fido;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/fido/android/framework/agent/Fido;->mFido:Lcom/fido/android/framework/agent/Fido;

    sget-object v3, Lcom/fido/android/framework/agent/Fido;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/fido/android/framework/agent/Fido;->mFidoReconnectedHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4}, Lcom/fido/android/framework/agent/Fido;->init(Landroid/content/Context;Landroid/os/Handler;)Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v1

    sget-object v3, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

    invoke-virtual {v1, v3}, Lcom/fido/android/framework/agent/api/ResultType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/fido/android/framework/agent/Fido$ServiceException;

    const-string v3, "Fido not connected"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/fido/android/framework/agent/Fido$ServiceException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    if-nez v1, :cond_4

    new-instance v1, Lcom/fido/android/framework/agent/Fido$ServiceException;

    const-string v2, "Fido not connected"

    invoke-direct {v1, v2, v5}, Lcom/fido/android/framework/agent/Fido$ServiceException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v1

    :cond_4
    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    return-object v1
.end method


# virtual methods
.method public getMFACInfo()Lcom/fido/android/framework/agent/api/MfacOut;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fido/android/framework/agent/Fido$ServiceException;,
            Lcom/fido/android/framework/agent/Fido$RequestException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/fido/android/framework/types/JsonObjectAdapter;->GsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v0, Lcom/fido/android/framework/agent/api/AgentAPI;

    invoke-direct {v0}, Lcom/fido/android/framework/agent/api/AgentAPI;-><init>()V

    sget-object v5, Lcom/fido/android/framework/agent/api/AgentAPI$OpType;->MFAC:Lcom/fido/android/framework/agent/api/AgentAPI$OpType;

    invoke-virtual {v5}, Lcom/fido/android/framework/agent/api/AgentAPI$OpType;->name()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/fido/android/framework/agent/api/AgentAPI;->Op:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/fido/android/framework/agent/Fido;->fido()Lcom/fido/android/framework/agent/Fido$Connection;

    move-result-object v5

    #calls: Lcom/fido/android/framework/agent/Fido$Connection;->sendXmlCommand(Ljava/util/List;)Lcom/fido/android/framework/agent/api/ResultType;
    invoke-static {v5, v2}, Lcom/fido/android/framework/agent/Fido$Connection;->access$800(Lcom/fido/android/framework/agent/Fido$Connection;Ljava/util/List;)Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v4

    sget-object v5, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

    if-ne v4, v5, :cond_0

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-class v6, Lcom/fido/android/framework/agent/api/AgentAPI;

    invoke-virtual {v1, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fido/android/framework/agent/api/AgentAPI;

    iget-object v5, v0, Lcom/fido/android/framework/agent/api/AgentAPI;->Out:Lcom/google/gson/JsonObject;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/fido/android/framework/agent/api/AgentAPI;->Out:Lcom/google/gson/JsonObject;

    const-class v6, Lcom/fido/android/framework/agent/api/MfacOut;

    invoke-virtual {v1, v5, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fido/android/framework/agent/api/MfacOut;

    :cond_0
    return-object v3
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;)Lcom/fido/android/framework/agent/api/ResultType;
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/fido/android/framework/agent/Fido;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    sput-object p1, Lcom/fido/android/framework/agent/Fido;->mContext:Landroid/content/Context;

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    if-nez v2, :cond_3

    invoke-static {p1}, Lcom/fido/android/framework/Version;->checkServiceVersion(Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/EnumConstantNotPresentException;

    const-string v3, "service version returned illegal state"

    invoke-direct {v2, v4, v3}, Ljava/lang/EnumConstantNotPresentException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v2

    :cond_1
    sget-object v2, Lcom/fido/android/framework/agent/Fido;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/fido/android/framework/agent/Fido;->uninit()V

    sput-object p1, Lcom/fido/android/framework/agent/Fido;->mContext:Landroid/content/Context;

    goto :goto_0

    :pswitch_0
    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    :goto_1
    return-object v2

    :pswitch_1
    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->NOT_COMPATIBLE:Lcom/fido/android/framework/agent/api/ResultType;

    goto :goto_1

    :pswitch_2
    :try_start_0
    new-instance v0, Lcom/fido/android/framework/agent/Fido$Connection;

    sget-object v2, Lcom/fido/android/framework/agent/Fido;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, p2, v3}, Lcom/fido/android/framework/agent/Fido$Connection;-><init>(Lcom/fido/android/framework/agent/Fido;Landroid/content/Context;Landroid/os/Handler;Lcom/fido/android/framework/agent/Fido$1;)V

    #calls: Lcom/fido/android/framework/agent/Fido$Connection;->bindService()Z
    invoke-static {v0}, Lcom/fido/android/framework/agent/Fido$Connection;->access$600(Lcom/fido/android/framework/agent/Fido$Connection;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;
    :try_end_0
    .catch Lcom/fido/android/framework/agent/Fido$ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/fido/android/framework/agent/Fido;->mFido:Lcom/fido/android/framework/agent/Fido;

    invoke-virtual {v2}, Lcom/fido/android/framework/agent/Fido;->uninit()V

    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public process(Lcom/fido/android/framework/agent/api/OstpIn;Ljava/lang/String;Ljava/lang/String;)Lcom/fido/android/framework/agent/Fido$Response;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fido/android/framework/agent/Fido$ServiceException;,
            Lcom/fido/android/framework/agent/Fido$RequestException;
        }
    .end annotation

    invoke-static {}, Lcom/fido/android/framework/types/JsonObjectAdapter;->GsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v0, Lcom/fido/android/framework/agent/api/AgentAPI;

    invoke-direct {v0}, Lcom/fido/android/framework/agent/api/AgentAPI;-><init>()V

    sget-object v5, Lcom/fido/android/framework/agent/api/AgentAPI$OpType;->OSTP:Lcom/fido/android/framework/agent/api/AgentAPI$OpType;

    invoke-virtual {v5}, Lcom/fido/android/framework/agent/api/AgentAPI$OpType;->name()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/fido/android/framework/agent/api/AgentAPI;->Op:Ljava/lang/String;

    iput-object p2, v0, Lcom/fido/android/framework/agent/api/AgentAPI;->Origin:Ljava/lang/String;

    new-instance v2, Lcom/fido/android/framework/agent/api/OstpIn;

    invoke-direct {v2}, Lcom/fido/android/framework/agent/api/OstpIn;-><init>()V

    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/fido/android/framework/agent/api/OstpIn;->request:Ljava/lang/String;

    iput-object v5, v2, Lcom/fido/android/framework/agent/api/OstpIn;->request:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/fido/android/framework/agent/api/OstpIn;->checkPolicyOnly:Z

    iput-boolean v5, v2, Lcom/fido/android/framework/agent/api/OstpIn;->checkPolicyOnly:Z

    iget-object v5, p1, Lcom/fido/android/framework/agent/api/OstpIn;->requestParams:Ljava/lang/String;

    iput-object v5, v2, Lcom/fido/android/framework/agent/api/OstpIn;->requestParams:Ljava/lang/String;

    :cond_0
    iput-object p3, v0, Lcom/fido/android/framework/agent/api/AgentAPI;->ServerInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonObject;

    iput-object v5, v0, Lcom/fido/android/framework/agent/api/AgentAPI;->In:Lcom/google/gson/JsonObject;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/fido/android/framework/agent/Fido;->fido()Lcom/fido/android/framework/agent/Fido$Connection;

    move-result-object v5

    #calls: Lcom/fido/android/framework/agent/Fido$Connection;->sendXmlCommand(Ljava/util/List;)Lcom/fido/android/framework/agent/api/ResultType;
    invoke-static {v5, v3}, Lcom/fido/android/framework/agent/Fido$Connection;->access$800(Lcom/fido/android/framework/agent/Fido$Connection;Ljava/util/List;)Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v4

    new-instance v6, Lcom/fido/android/framework/agent/Fido$Response;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v4, v5, v7}, Lcom/fido/android/framework/agent/Fido$Response;-><init>(Lcom/fido/android/framework/agent/Fido;Lcom/fido/android/framework/agent/api/ResultType;Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    return-object v6
.end method

.method public uninit()V
    .locals 1

    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    #calls: Lcom/fido/android/framework/agent/Fido$Connection;->unbindService()V
    invoke-static {v0}, Lcom/fido/android/framework/agent/Fido$Connection;->access$700(Lcom/fido/android/framework/agent/Fido$Connection;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    return-void
.end method
