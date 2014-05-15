.class public Lcom/fido/android/framework/agent/MFACSDK;
.super Ljava/lang/Object;
.source "MFACSDK.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFido:Lcom/fido/android/framework/agent/Fido;

.field private mFidoConnectedHandler:Landroid/os/Handler;

.field private mIsReady:Z

.field private mLastError:Lcom/fido/android/framework/agent/api/ResultType;

.field private mRequest:Lcom/fido/android/framework/agent/RequestParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fido/android/framework/agent/RequestParams;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

    iput-object v0, p0, Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;

    iput-boolean v2, p0, Lcom/fido/android/framework/agent/MFACSDK;->mIsReady:Z

    iput-object v1, p0, Lcom/fido/android/framework/agent/MFACSDK;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/fido/android/framework/agent/MFACSDK;->mFido:Lcom/fido/android/framework/agent/Fido;

    iput-object v1, p0, Lcom/fido/android/framework/agent/MFACSDK;->mFidoConnectedHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/fido/android/framework/agent/MFACSDK;->mRequest:Lcom/fido/android/framework/agent/RequestParams;

    invoke-static {}, Lcom/fido/android/framework/agent/Fido;->Instance()Lcom/fido/android/framework/agent/Fido;

    move-result-object v0

    iput-object v0, p0, Lcom/fido/android/framework/agent/MFACSDK;->mFido:Lcom/fido/android/framework/agent/Fido;

    iput-boolean v2, p0, Lcom/fido/android/framework/agent/MFACSDK;->mIsReady:Z

    iput-object p1, p0, Lcom/fido/android/framework/agent/MFACSDK;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/fido/android/framework/agent/MFACSDK;->MfacSdkHandlerThread()V

    return-void
.end method

.method private MfacSdkHandlerThread()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fido/android/framework/agent/MFACSDK$1;

    invoke-direct {v1, p0}, Lcom/fido/android/framework/agent/MFACSDK$1;-><init>(Lcom/fido/android/framework/agent/MFACSDK;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/fido/android/framework/agent/MFACSDK;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDK;->mFidoConnectedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fido/android/framework/agent/MFACSDK;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/fido/android/framework/agent/MFACSDK;->mFidoConnectedHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$102(Lcom/fido/android/framework/agent/MFACSDK;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fido/android/framework/agent/MFACSDK;->mIsReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/fido/android/framework/agent/MFACSDK;)Lcom/fido/android/framework/agent/RequestParams;
    .locals 1

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDK;->mRequest:Lcom/fido/android/framework/agent/RequestParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fido/android/framework/agent/MFACSDK;)Lcom/fido/android/framework/agent/api/ResultType;
    .locals 1

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fido/android/framework/agent/MFACSDK;Lcom/fido/android/framework/agent/api/ResultType;)Lcom/fido/android/framework/agent/api/ResultType;
    .locals 0

    iput-object p1, p0, Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;

    return-object p1
.end method

.method static synthetic access$400(Lcom/fido/android/framework/agent/MFACSDK;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDK;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fido/android/framework/agent/MFACSDK;)Lcom/fido/android/framework/agent/Fido;
    .locals 1

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDK;->mFido:Lcom/fido/android/framework/agent/Fido;

    return-object v0
.end method


# virtual methods
.method public getLastError()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;

    invoke-virtual {v1}, Lcom/fido/android/framework/agent/api/ResultType;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;

    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->NO_MATCH:Lcom/fido/android/framework/agent/api/ResultType;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

    invoke-virtual {v1}, Lcom/fido/android/framework/agent/api/ResultType;->name()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNoMatch()Z
    .locals 2

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;

    sget-object v1, Lcom/fido/android/framework/agent/api/ResultType;->NO_MATCH:Lcom/fido/android/framework/agent/api/ResultType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getVerRangeHigh()Ljava/lang/String;
    .locals 4

    const-string v2, ""

    :try_start_0
    iget-object v3, p0, Lcom/fido/android/framework/agent/MFACSDK;->mFido:Lcom/fido/android/framework/agent/Fido;

    invoke-virtual {v3}, Lcom/fido/android/framework/agent/Fido;->getMFACInfo()Lcom/fido/android/framework/agent/api/MfacOut;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/fido/android/framework/agent/api/MfacOut;->VersionHighRange:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    sget-object v3, Lcom/fido/android/framework/agent/api/ResultType;->FAILURE:Lcom/fido/android/framework/agent/api/ResultType;

    iput-object v3, p0, Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;
    :try_end_0
    .catch Lcom/fido/android/framework/agent/Fido$ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fido/android/framework/agent/Fido$RequestException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    iput-object v3, p0, Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    iput-object v3, p0, Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;

    goto :goto_0
.end method

.method public final getVerRangeStart()Ljava/lang/String;
    .locals 4

    const-string v2, ""

    :try_start_0
    iget-object v3, p0, Lcom/fido/android/framework/agent/MFACSDK;->mFido:Lcom/fido/android/framework/agent/Fido;

    invoke-virtual {v3}, Lcom/fido/android/framework/agent/Fido;->getMFACInfo()Lcom/fido/android/framework/agent/api/MfacOut;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/fido/android/framework/agent/api/MfacOut;->VersionLowRange:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    sget-object v3, Lcom/fido/android/framework/agent/api/ResultType;->FAILURE:Lcom/fido/android/framework/agent/api/ResultType;

    iput-object v3, p0, Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;
    :try_end_0
    .catch Lcom/fido/android/framework/agent/Fido$ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fido/android/framework/agent/Fido$RequestException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    iput-object v3, p0, Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    iput-object v3, p0, Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fido/android/framework/agent/MFACSDK;->mIsReady:Z

    return v0
.end method

.method public isReged(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lcom/fido/android/framework/agent/api/OstpIn;

    invoke-direct {v1}, Lcom/fido/android/framework/agent/api/OstpIn;-><init>()V

    const-string v4, ""

    iput-object v4, v1, Lcom/fido/android/framework/agent/api/OstpIn;->request:Ljava/lang/String;

    iget-object v4, p0, Lcom/fido/android/framework/agent/MFACSDK;->mRequest:Lcom/fido/android/framework/agent/RequestParams;

    invoke-virtual {v4}, Lcom/fido/android/framework/agent/RequestParams;->getCheckPolicyOnly()Z

    move-result v4

    iput-boolean v4, v1, Lcom/fido/android/framework/agent/api/OstpIn;->checkPolicyOnly:Z

    iget-object v4, p0, Lcom/fido/android/framework/agent/MFACSDK;->mFido:Lcom/fido/android/framework/agent/Fido;

    iget-object v5, p0, Lcom/fido/android/framework/agent/MFACSDK;->mRequest:Lcom/fido/android/framework/agent/RequestParams;

    invoke-virtual {v5}, Lcom/fido/android/framework/agent/RequestParams;->getOrigin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5, p1}, Lcom/fido/android/framework/agent/Fido;->process(Lcom/fido/android/framework/agent/api/OstpIn;Ljava/lang/String;Ljava/lang/String;)Lcom/fido/android/framework/agent/Fido$Response;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v3}, Lcom/fido/android/framework/agent/Fido$Response;->isRegistered()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v3, ""

    iget-object v4, p0, Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;

    sget-object v5, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;

    sget-object v5, Lcom/fido/android/framework/agent/api/ResultType;->NOT_COMPATIBLE:Lcom/fido/android/framework/agent/api/ResultType;

    if-eq v4, v5, :cond_0

    :try_start_0
    new-instance v1, Lcom/fido/android/framework/agent/api/OstpIn;

    invoke-direct {v1}, Lcom/fido/android/framework/agent/api/OstpIn;-><init>()V

    iput-object p1, v1, Lcom/fido/android/framework/agent/api/OstpIn;->request:Ljava/lang/String;

    iput-object p2, v1, Lcom/fido/android/framework/agent/api/OstpIn;->requestParams:Ljava/lang/String;

    iget-object v4, p0, Lcom/fido/android/framework/agent/MFACSDK;->mRequest:Lcom/fido/android/framework/agent/RequestParams;

    invoke-virtual {v4}, Lcom/fido/android/framework/agent/RequestParams;->getCheckPolicyOnly()Z

    move-result v4

    iput-boolean v4, v1, Lcom/fido/android/framework/agent/api/OstpIn;->checkPolicyOnly:Z

    iget-object v4, p0, Lcom/fido/android/framework/agent/MFACSDK;->mFido:Lcom/fido/android/framework/agent/Fido;

    iget-object v5, p0, Lcom/fido/android/framework/agent/MFACSDK;->mRequest:Lcom/fido/android/framework/agent/RequestParams;

    invoke-virtual {v5}, Lcom/fido/android/framework/agent/RequestParams;->getOrigin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5, p3}, Lcom/fido/android/framework/agent/Fido;->process(Lcom/fido/android/framework/agent/api/OstpIn;Ljava/lang/String;Ljava/lang/String;)Lcom/fido/android/framework/agent/Fido$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fido/android/framework/agent/Fido$Response;->status()Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v4

    iput-object v4, p0, Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;

    invoke-virtual {v2}, Lcom/fido/android/framework/agent/Fido$Response;->message()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    sget-object v4, Lcom/fido/android/framework/agent/api/ResultType;->FAILURE:Lcom/fido/android/framework/agent/api/ResultType;

    iput-object v4, p0, Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
