.class public Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;
.super Ljava/lang/Object;
.source "SBrowserProxyHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SBrowserProxyHandler"

.field private static _instance:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;


# instance fields
.field private mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

.field private mContext:Landroid/content/Context;

.field private mIsCustomProxyUsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->_instance:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mIsCustomProxyUsed:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBrowserPolicy()Landroid/app/enterprise/BrowserPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->_instance:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->_instance:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->_instance:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->_instance:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    return-object v0
.end method


# virtual methods
.method public isCustomProxyUsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mIsCustomProxyUsed:Z

    return v0
.end method

.method public update()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBrowserPolicy()Landroid/app/enterprise/BrowserPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v2}, Landroid/app/enterprise/BrowserPolicy;->getHttpProxy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SBrowserProxyHandler"

    const-string v3, "applying MDM proxy"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->SetProxyServer(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mIsCustomProxyUsed:Z

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->setLocalProxy(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SBrowserProxyHandler"

    const-string v3, "applying local proxy"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mIsCustomProxyUsed:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mIsCustomProxyUsed:Z

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->SetProxyServer(Ljava/lang/String;)V

    goto :goto_0
.end method
