.class public Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;
.super Ljava/lang/Object;
.source "SBrowserClientCertificateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$SmartcardThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SBrowserClientCertificateHandler"

.field private static _SbrowserSmartcardOnFinishedCb:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$OnFinishedCb;

.field private static _clientCertRequestCb:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;

.field private static _instance:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;


# instance fields
.field private mAlertDialogToUseSmartcard:Landroid/app/AlertDialog;

.field private mAliasMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeniedList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartcardList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartcardThread:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$SmartcardThread;

.field private mSmartcardWaitingQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->_instance:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->_clientCertRequestCb:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$2;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->_SbrowserSmartcardOnFinishedCb:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$OnFinishedCb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mAlertDialogToUseSmartcard:Landroid/app/AlertDialog;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mRequestQueue:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mSmartcardWaitingQueue:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mAliasMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mSmartcardList:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mDeniedList:Ljava/util/HashSet;

    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->_clientCertRequestCb:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;

    invoke-static {v0}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->setCallback(Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->_SbrowserSmartcardOnFinishedCb:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$OnFinishedCb;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->setOnFinishedCb(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$OnFinishedCb;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->appendClientCertRequest(Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->storeAlias(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->processClientCertRequest()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->clearSmartcardList()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mAlertDialogToUseSmartcard:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mAlertDialogToUseSmartcard:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->selectedToUsePlatform()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->selectedToUseSmartcard()V

    return-void
.end method

.method private appendClientCertRequest(Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;)V
    .locals 3

    const-string v0, "SBrowserClientCertificateHandler"

    const-string v1, "appendClientCertRequest() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mRequestQueue:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->processClientCertRequest()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private askUserToUseSmartcard()V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ActivityStatus;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SBrowserClientCertificateHandler"

    const-string v1, "askUserToUseSmartcard() can\'t get activity()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lorg/chromium/base/ActivityStatus;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c01fc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01fd

    new-instance v2, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$4;-><init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01fe

    new-instance v2, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$3;-><init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mAlertDialogToUseSmartcard:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mAlertDialogToUseSmartcard:Landroid/app/AlertDialog;

    new-instance v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$5;-><init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mAlertDialogToUseSmartcard:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private clearSmartcardList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mSmartcardList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;
    .locals 3

    const-class v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->_instance:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/base/ActivityStatus;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SBrowserClientCertificateHandler"

    const-string v2, "getInstance() can\'t get activity()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->_instance:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->_instance:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processClientCertRequest()V
    .locals 5

    const-string v3, "SBrowserClientCertificateHandler"

    const-string v4, "processClientCertRequest() called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mRequestQueue:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v4

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mAliasMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->getHostAndPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v3, "SBrowserClientCertificateHandler"

    const-string v4, "processClientCertRequest() use stored info"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;

    invoke-virtual {v1, v0}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->PrivateKeyAliasSelected(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->processClientCertRequest()V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->canUseSmartcard()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mSmartcardList:Ljava/util/HashSet;

    invoke-virtual {v1}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->getHostAndPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->selectedToUseSmartcard()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mAlertDialogToUseSmartcard:Landroid/app/AlertDialog;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->askUserToUseSmartcard()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mDeniedList:Ljava/util/HashSet;

    invoke-virtual {v1}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->getHostAndPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->PrivateKeyAliasSelected(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->processClientCertRequest()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->selectedToUsePlatform()V

    goto :goto_0
.end method

.method private selectedToUsePlatform()V
    .locals 5

    const-string v2, "SBrowserClientCertificateHandler"

    const-string v3, "selectedToUsePlatform() called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mRequestQueue:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SBrowserClientCertificateHandler"

    const-string v4, "selectedToUsePlatform() queue is empty!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;

    move-object v1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->choosePrivateKeyAliasFromPlatform()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private selectedToUseSmartcard()V
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mRequestQueue:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SBrowserClientCertificateHandler"

    const-string v4, "selectedToUseSmartcard() queue is empty!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;

    move-object v1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mSmartcardList:Ljava/util/HashSet;

    invoke-virtual {v1}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->getHostAndPort()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mSmartcardList:Ljava/util/HashSet;

    invoke-virtual {v1}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->getHostAndPort()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->putSmartcardWaitingQueue(Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->isSmartcardThreadRunning()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$SmartcardThread;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$SmartcardThread;-><init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mSmartcardThread:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$SmartcardThread;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mSmartcardThread:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$SmartcardThread;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$SmartcardThread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    const-string v2, "SBrowserClientCertificateHandler"

    const-string v3, "selectedToUseSmartcard it is middle of creating smartcard context. do nothing!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized storeAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    const-string v0, "SBrowserClientCertificateHandler"

    const-string v1, "storeAlias() null is not acceptable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-nez p2, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mDeniedList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mDeniedList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mAliasMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mAliasMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public isSmartcardThreadRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mSmartcardThread:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$SmartcardThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mSmartcardThread:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$SmartcardThread;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$SmartcardThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processSmartcardWaitingQueue()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mSmartcardWaitingQueue:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mSmartcardWaitingQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->PrivateKeyAliasSelected(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mSmartcardWaitingQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->processClientCertRequest()V

    return-void
.end method

.method public putSmartcardWaitingQueue(Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mSmartcardWaitingQueue:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mSmartcardWaitingQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
