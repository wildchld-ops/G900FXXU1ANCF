.class public Lcom/fido/android/framework/agent/RequestParams;
.super Ljava/lang/Object;
.source "RequestParams.java"


# instance fields
.field private mCheckPolicyOnly:Z

.field private mConnectedHandler:Landroid/os/Handler;

.field private mOrigin:Ljava/lang/String;

.field private mTlsData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/fido/android/framework/agent/RequestParams;->mOrigin:Ljava/lang/String;

    iput-object v1, p0, Lcom/fido/android/framework/agent/RequestParams;->mTlsData:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fido/android/framework/agent/RequestParams;->mCheckPolicyOnly:Z

    iput-object v1, p0, Lcom/fido/android/framework/agent/RequestParams;->mConnectedHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getFidoJS(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "injectedfido"

    const-string v8, "raw"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    move-object v4, v5

    :cond_1
    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v6

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_1
    throw v6

    :catch_3
    move-exception v1

    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCheckPolicyOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fido/android/framework/agent/RequestParams;->mCheckPolicyOnly:Z

    return v0
.end method

.method public getConnectedHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/fido/android/framework/agent/RequestParams;->mConnectedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fido/android/framework/agent/RequestParams;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getTlsData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fido/android/framework/agent/RequestParams;->mTlsData:Ljava/lang/String;

    return-object v0
.end method

.method public removeLastSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public setCheckPolicyOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fido/android/framework/agent/RequestParams;->mCheckPolicyOnly:Z

    return-void
.end method

.method public setConnectedHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/fido/android/framework/agent/RequestParams;->mConnectedHandler:Landroid/os/Handler;

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/fido/android/framework/agent/RequestParams;->truncateURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fido/android/framework/agent/RequestParams;->mOrigin:Ljava/lang/String;

    return-void
.end method

.method public setTlsData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fido/android/framework/agent/RequestParams;->mTlsData:Ljava/lang/String;

    return-void
.end method

.method public truncateURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fido/android/framework/agent/RequestParams;->removeLastSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
