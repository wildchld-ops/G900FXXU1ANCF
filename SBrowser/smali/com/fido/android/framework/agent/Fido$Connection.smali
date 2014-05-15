.class Lcom/fido/android/framework/agent/Fido$Connection;
.super Ljava/lang/Object;
.source "Fido.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fido/android/framework/agent/Fido;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFidoService:Lcom/fido/android/framework/service/IFidoService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/fido/android/framework/agent/Fido;


# direct methods
.method private constructor <init>(Lcom/fido/android/framework/agent/Fido;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fido/android/framework/agent/Fido$ServiceException;
        }
    .end annotation

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/fido/android/framework/agent/Fido$Connection;->this$0:Lcom/fido/android/framework/agent/Fido;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mFidoService:Lcom/fido/android/framework/service/IFidoService;

    iput-object v3, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object v3, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Lcom/fido/android/framework/agent/Fido$ServiceException;

    const-string v2, "Invalid parameter exception"

    invoke-direct {v1, v2, v3}, Lcom/fido/android/framework/agent/Fido$ServiceException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v1

    :cond_1
    move-object v0, p3

    iput-object p2, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mFidoService:Lcom/fido/android/framework/service/IFidoService;

    new-instance v1, Lcom/fido/android/framework/agent/Fido$Connection$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/fido/android/framework/agent/Fido$Connection$1;-><init>(Lcom/fido/android/framework/agent/Fido$Connection;Lcom/fido/android/framework/agent/Fido;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/fido/android/framework/agent/Fido;Landroid/content/Context;Landroid/os/Handler;Lcom/fido/android/framework/agent/Fido$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fido/android/framework/agent/Fido$ServiceException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/fido/android/framework/agent/Fido$Connection;-><init>(Lcom/fido/android/framework/agent/Fido;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100(Lcom/fido/android/framework/agent/Fido$Connection;)Lcom/fido/android/framework/service/IFidoService;
    .locals 1

    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mFidoService:Lcom/fido/android/framework/service/IFidoService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fido/android/framework/agent/Fido$Connection;Lcom/fido/android/framework/service/IFidoService;)Lcom/fido/android/framework/service/IFidoService;
    .locals 0

    iput-object p1, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mFidoService:Lcom/fido/android/framework/service/IFidoService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/fido/android/framework/agent/Fido$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/fido/android/framework/agent/Fido$Connection;->bindService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/fido/android/framework/agent/Fido$Connection;)V
    .locals 0

    invoke-direct {p0}, Lcom/fido/android/framework/agent/Fido$Connection;->unbindService()V

    return-void
.end method

.method static synthetic access$800(Lcom/fido/android/framework/agent/Fido$Connection;Ljava/util/List;)Lcom/fido/android/framework/agent/api/ResultType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fido/android/framework/agent/Fido$ServiceException;,
            Lcom/fido/android/framework/agent/Fido$RequestException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fido/android/framework/agent/Fido$Connection;->sendXmlCommand(Ljava/util/List;)Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v0

    return-object v0
.end method

.method private bindService()Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fido/android/framework/service/IFidoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method private isValidCertificate(Landroid/content/ComponentName;)Z
    .locals 11

    const/4 v3, 0x1

    :try_start_0
    iget-object v7, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v6, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v7, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "servicecert"

    const-string v9, "raw"

    iget-object v10, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v7, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_a

    move-result-object v4

    :try_start_1
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    new-instance v8, Ljava/io/ByteArrayInputStream;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_8

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_a

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_a

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_0

    :catch_2
    move-exception v1

    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_a

    goto :goto_0

    :catch_3
    move-exception v7

    goto :goto_0

    :catch_4
    move-exception v1

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_a

    goto :goto_0

    :catch_5
    move-exception v7

    goto :goto_0

    :catch_6
    move-exception v1

    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_0

    :catch_7
    move-exception v7

    goto :goto_0

    :catch_8
    move-exception v1

    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_0

    :catch_9
    move-exception v7

    goto :goto_0

    :catchall_0
    move-exception v7

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_a

    :goto_1
    :try_start_9
    throw v7
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_a

    :catch_a
    move-exception v1

    const/4 v3, 0x0

    goto :goto_0

    :catch_b
    move-exception v7

    goto :goto_0

    :catch_c
    move-exception v8

    goto :goto_1
.end method

.method private sendXmlCommand(Ljava/util/List;)Lcom/fido/android/framework/agent/api/ResultType;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fido/android/framework/agent/api/ResultType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fido/android/framework/agent/Fido$ServiceException;,
            Lcom/fido/android/framework/agent/Fido$RequestException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mFidoService:Lcom/fido/android/framework/service/IFidoService;

    invoke-interface {v3, p1}, Lcom/fido/android/framework/service/IFidoService;->processXmlCommand(Ljava/util/List;)I

    move-result v2

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/fido/android/framework/agent/Fido$Connection;->validate(ILjava/lang/String;)Lcom/fido/android/framework/agent/api/ResultType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/fido/android/framework/agent/Fido;->access$200()Lcom/fido/android/framework/agent/Fido;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fido/android/framework/agent/Fido;->uninit()V

    new-instance v3, Lcom/fido/android/framework/agent/Fido$ServiceException;

    const-string v4, "Remote exception"

    invoke-direct {v3, v4, v5}, Lcom/fido/android/framework/agent/Fido$ServiceException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v3

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/fido/android/framework/agent/Fido;->access$200()Lcom/fido/android/framework/agent/Fido;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fido/android/framework/agent/Fido;->uninit()V

    new-instance v3, Lcom/fido/android/framework/agent/Fido$ServiceException;

    const-string v4, "Null pointer exception"

    invoke-direct {v3, v4, v5}, Lcom/fido/android/framework/agent/Fido$ServiceException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v3
.end method

.method private unbindService()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mFidoService:Lcom/fido/android/framework/service/IFidoService;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private validate(ILjava/lang/String;)Lcom/fido/android/framework/agent/api/ResultType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fido/android/framework/agent/Fido$ServiceException;,
            Lcom/fido/android/framework/agent/Fido$RequestException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p2

    :goto_0
    if-ltz p1, :cond_1

    invoke-static {}, Lcom/fido/android/framework/agent/Fido;->access$300()[Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v2

    array-length v2, v2

    if-ge p1, v2, :cond_1

    invoke-static {}, Lcom/fido/android/framework/agent/Fido;->access$300()[Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v2

    aget-object v0, v2, p1

    if-nez p2, :cond_3

    new-instance v2, Lcom/fido/android/framework/agent/Fido$ServiceException;

    invoke-direct {v2, v1, v3}, Lcom/fido/android/framework/agent/Fido$ServiceException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v2

    :cond_0
    const-string v1, "Validate string is null"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/fido/android/framework/agent/Fido;->access$300()[Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v2

    array-length v2, v2

    if-ne p1, v2, :cond_2

    new-instance v2, Lcom/fido/android/framework/agent/Fido$RequestException;

    invoke-direct {v2, v1, v3}, Lcom/fido/android/framework/agent/Fido$RequestException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v2

    :cond_2
    new-instance v2, Lcom/fido/android/framework/agent/Fido$ServiceException;

    invoke-direct {v2, v1, v3}, Lcom/fido/android/framework/agent/Fido$ServiceException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v2

    :cond_3
    return-object v0
.end method
