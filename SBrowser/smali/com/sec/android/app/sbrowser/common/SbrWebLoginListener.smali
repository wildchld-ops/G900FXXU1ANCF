.class public Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;
.super Ljava/lang/Object;
.source "SbrWebLoginListener.java"

# interfaces
.implements Lorg/samsung/content/sbrowser/SbrWebLoginDelegate;


# static fields
.field private static final PERM_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SbrWebLoginListener"


# instance fields
.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field final mContext:Landroid/content/Context;

.field private mFPScanDone:Z

.field private mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private mHandler:Landroid/os/Handler;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->PERM_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/samsung/content/sbrowser/SbrContentViewCore;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mFPScanDone:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener$1;-><init>(Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mUrl:Ljava/lang/String;

    return-void
.end method

.method private NativeOrScriptLogin(Z)V
    .locals 6

    const-string v3, "SbrWebLoginListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entered the NativeOrScriptLogin function with enabled value as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    check-cast v3, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSbrPasswordManagerInstance()Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->getWebPassDatabaseInstance()Lorg/samsung/chrome/browser/SbrWebLoginProvider;

    move-result-object v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->getCurrentTabUrlDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/samsung/chrome/browser/SbrWebLoginProvider;->getFPActiveUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SbrWebLoginListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling native FPAuthStatus with user as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enabled value as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->FPAuthStatus(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mFPScanDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->NativeOrScriptLogin(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;)Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method private getCurrentTabUrlDomain()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public IsVerficationRequire()Z
    .locals 9

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move v5, v4

    :goto_0
    return v5

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    check-cast v6, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSbrPasswordManagerInstance()Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->getWebPassDatabaseInstance()Lorg/samsung/chrome/browser/SbrWebLoginProvider;

    move-result-object v3

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->getCurrentTabUrlDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Lorg/samsung/chrome/browser/SbrWebLoginProvider;->isFPAccountAvailable(Ljava/lang/String;)Z

    move-result v4

    :cond_2
    const-string v6, "SbrWebLoginListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SbrWebPassHandler: Return value for IsVerficationRequire is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    goto :goto_0
.end method

.method public OnShowVerifyer()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mFPScanDone:Z

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->PERM_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mFPScanDone:Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "SbrWebLoginListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not showing FP Screen, mFPScanDone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mFPScanDone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public UpdateUrl(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SbrWebLoginListener;->mUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method
