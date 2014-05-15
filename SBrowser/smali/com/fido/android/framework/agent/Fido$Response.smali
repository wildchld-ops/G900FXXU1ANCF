.class public Lcom/fido/android/framework/agent/Fido$Response;
.super Ljava/lang/Object;
.source "Fido.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fido/android/framework/agent/Fido;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Response"
.end annotation


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mRegisteredUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:Lcom/fido/android/framework/agent/api/ResultType;

.field final synthetic this$0:Lcom/fido/android/framework/agent/Fido;


# direct methods
.method private constructor <init>(Lcom/fido/android/framework/agent/Fido;Lcom/fido/android/framework/agent/api/ResultType;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fido/android/framework/agent/Fido$ServiceException;
        }
    .end annotation

    iput-object p1, p0, Lcom/fido/android/framework/agent/Fido$Response;->this$0:Lcom/fido/android/framework/agent/Fido;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v4, ""

    iput-object v4, p0, Lcom/fido/android/framework/agent/Fido$Response;->mMessage:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/fido/android/framework/agent/Fido$Response;->mRegisteredUsers:Ljava/util/List;

    iput-object p2, p0, Lcom/fido/android/framework/agent/Fido$Response;->mStatus:Lcom/fido/android/framework/agent/api/ResultType;

    :try_start_0
    invoke-static {}, Lcom/fido/android/framework/types/JsonObjectAdapter;->GsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v4, Lcom/fido/android/framework/agent/api/AgentAPI;

    invoke-virtual {v2, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fido/android/framework/agent/api/AgentAPI;

    iget-object v4, v0, Lcom/fido/android/framework/agent/api/AgentAPI;->Out:Lcom/google/gson/JsonObject;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/fido/android/framework/agent/api/AgentAPI;->Out:Lcom/google/gson/JsonObject;

    const-class v5, Lcom/fido/android/framework/agent/api/OstpOut;

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fido/android/framework/agent/api/OstpOut;

    iget-object v4, v3, Lcom/fido/android/framework/agent/api/OstpOut;->response:Ljava/lang/String;

    iput-object v4, p0, Lcom/fido/android/framework/agent/Fido$Response;->mMessage:Ljava/lang/String;

    iget-object v4, v3, Lcom/fido/android/framework/agent/api/OstpOut;->registeredUsers:Ljava/util/List;

    iput-object v4, p0, Lcom/fido/android/framework/agent/Fido$Response;->mRegisteredUsers:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Lcom/fido/android/framework/agent/Fido$ServiceException;

    const-string v5, "Failed to parse response"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/fido/android/framework/agent/Fido$ServiceException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v4
.end method

.method synthetic constructor <init>(Lcom/fido/android/framework/agent/Fido;Lcom/fido/android/framework/agent/api/ResultType;Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fido/android/framework/agent/Fido$ServiceException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/fido/android/framework/agent/Fido$Response;-><init>(Lcom/fido/android/framework/agent/Fido;Lcom/fido/android/framework/agent/api/ResultType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isRegistered()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido$Response;->mRegisteredUsers:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido$Response;->mRegisteredUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$Response;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public registeredUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$Response;->mRegisteredUsers:Ljava/util/List;

    return-object v0
.end method

.method public status()Lcom/fido/android/framework/agent/api/ResultType;
    .locals 1

    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$Response;->mStatus:Lcom/fido/android/framework/agent/api/ResultType;

    return-object v0
.end method
