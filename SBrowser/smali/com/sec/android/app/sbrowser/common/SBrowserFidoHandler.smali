.class public final Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;
.super Ljava/lang/Object;
.source "SBrowserFidoHandler.java"


# static fields
.field private static final FIDO_OBJECT:Ljava/lang/String; = "MFACSDK"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mfacSDK:Lcom/fido/android/framework/agent/MFACSDK;

.field private requestParams:Lcom/fido/android/framework/agent/RequestParams;

.field private script_fido:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private accessFidoFromAssets()Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->script_fido:Ljava/lang/String;

    if-nez v4, :cond_2

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fido.js"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->script_fido:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->script_fido:Ljava/lang/String;

    return-object v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_1
    throw v4

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->TAG:Ljava/lang/String;

    const-string v5, " FIDO from Assets: Reused"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getFidoHandlerInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->TAG:Ljava/lang/String;

    const-string v1, "Fido instance: feature eneabled..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public addFidoJavaScript(Lorg/chromium/content/browser/ContentView;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/fido/android/framework/agent/RequestParams;

    invoke-direct {v0}, Lcom/fido/android/framework/agent/RequestParams;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->requestParams:Lcom/fido/android/framework/agent/RequestParams;

    new-instance v0, Lcom/fido/android/framework/agent/MFACSDK;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->requestParams:Lcom/fido/android/framework/agent/RequestParams;

    invoke-direct {v0, v1, v2}, Lcom/fido/android/framework/agent/MFACSDK;-><init>(Landroid/content/Context;Lcom/fido/android/framework/agent/RequestParams;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->mfacSDK:Lcom/fido/android/framework/agent/MFACSDK;

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->mfacSDK:Lcom/fido/android/framework/agent/MFACSDK;

    const-string v2, "MFACSDK"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->addPossiblyUnsafeJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public fidoEvaluateJavaScript(Ljava/lang/String;Lorg/chromium/content/browser/ContentView;)V
    .locals 5

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->mfacSDK:Lcom/fido/android/framework/agent/MFACSDK;

    invoke-virtual {v2}, Lcom/fido/android/framework/agent/MFACSDK;->getLastError()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    invoke-virtual {v3}, Lcom/fido/android/framework/agent/api/ResultType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->mfacSDK:Lcom/fido/android/framework/agent/MFACSDK;

    invoke-virtual {v2}, Lcom/fido/android/framework/agent/MFACSDK;->getLastError()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fido/android/framework/agent/api/ResultType;->NOT_COMPATIBLE:Lcom/fido/android/framework/agent/api/ResultType;

    invoke-virtual {v3}, Lcom/fido/android/framework/agent/api/ResultType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->requestParams:Lcom/fido/android/framework/agent/RequestParams;

    invoke-virtual {v2, v1}, Lcom/fido/android/framework/agent/RequestParams;->setOrigin(Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->TAG:Ljava/lang/String;

    const-string v3, "FIDO- evaluateJavaScript"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserFidoHandler;->accessFidoFromAssets()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content/browser/ContentViewCore;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;)V

    goto :goto_0
.end method
