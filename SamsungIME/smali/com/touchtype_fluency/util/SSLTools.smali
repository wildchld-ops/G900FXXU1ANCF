.class public Lcom/touchtype_fluency/util/SSLTools;
.super Ljava/lang/Object;


# static fields
.field public static final DO_NOT_VERIFY_HOST:Ljavax/net/ssl/HostnameVerifier;

.field private static a:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/touchtype_fluency/util/SSLTools$1;

    invoke-direct {v0}, Lcom/touchtype_fluency/util/SSLTools$1;-><init>()V

    sput-object v0, Lcom/touchtype_fluency/util/SSLTools;->DO_NOT_VERIFY_HOST:Ljavax/net/ssl/HostnameVerifier;

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/touchtype_fluency/util/SSLTools$2;

    invoke-direct {v2}, Lcom/touchtype_fluency/util/SSLTools$2;-><init>()V

    aput-object v2, v0, v1

    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sput-object v1, Lcom/touchtype_fluency/util/SSLTools;->a:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SSLTools"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTrustAllSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    sget-object v0, Lcom/touchtype_fluency/util/SSLTools;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method
