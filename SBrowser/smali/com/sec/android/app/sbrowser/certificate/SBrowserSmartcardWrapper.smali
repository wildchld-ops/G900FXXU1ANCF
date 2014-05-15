.class public Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;
.super Ljava/lang/Object;
.source "SBrowserSmartcardWrapper.java"

# interfaces
.implements Lcom/sec/enterprise/knox/smartcard/SmartCardHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SmartcardMsgObj;,
        Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;,
        Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$OnStatusChangedCb;,
        Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$OnFinishedCb;
    }
.end annotation


# static fields
.field private static final MSG_DELAY_TIME:I = 0x1b58

.field protected static final MSG_SET_NORMAL_SSL_CONTEXT:I = 0x0

.field protected static final MSG_SET_SMARTCARD_SSL_CONTEXT:I = 0x1

.field protected static final MSG_SMARTCARD_TIMEOUT:I = 0xc8

.field protected static final MSG_SSL_CONTEXT_CHANGED_NORMAL:I = 0x64

.field protected static final MSG_SSL_CONTEXT_CHANGED_SMARTCARD:I = 0x65

.field private static final MSG_TIMEOUT:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "SBrowserSmartcardWrapper"

.field private static _onSslContextChangedCb:Lorg/samsung/chrome/browser/SbrSmartcardHelper$OnSslContextChangedCb;

.field private static instance_:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

.field private static mMessageHandler:Landroid/os/Handler;

.field private static final syncObjForSmartcardEngine:Ljava/lang/Object;


# instance fields
.field private isEnabled:Z

.field private listenersForFinished:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$OnFinishedCb;",
            ">;"
        }
    .end annotation
.end field

.field private listenersForStatusChanged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$OnStatusChangedCb;",
            ">;"
        }
    .end annotation
.end field

.field private mInitState:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

.field private mLoadingFrameList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartCardHelper:Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;

.field private mThread:Landroid/os/HandlerThread;

.field private shouldInit:Z

.field private final syncObjForFinishedCb:Ljava/lang/Object;

.field private final syncObjForStatusChangedCb:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->instance_:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->syncObjForSmartcardEngine:Ljava/lang/Object;

    sput-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mMessageHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->_onSslContextChangedCb:Lorg/samsung/chrome/browser/SbrSmartcardHelper$OnSslContextChangedCb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->syncObjForFinishedCb:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->listenersForFinished:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->syncObjForStatusChangedCb:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->listenersForStatusChanged:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->NOT_INITIALIZED:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mInitState:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    invoke-static {}, Lorg/chromium/base/ActivityStatus;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mSmartCardHelper:Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;

    invoke-static {}, Lorg/chromium/base/ActivityStatus;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->isAuthenticationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->isEnabled:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->isEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->shouldInit:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mLoadingFrameList:Ljava/util/LinkedList;

    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->_onSslContextChangedCb:Lorg/samsung/chrome/browser/SbrSmartcardHelper$OnSslContextChangedCb;

    invoke-static {v0}, Lorg/samsung/chrome/browser/SbrSmartcardHelper;->setOnSslContextChangedCallback(Lorg/samsung/chrome/browser/SbrSmartcardHelper$OnSslContextChangedCb;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SBrowserSmartcardWrapper_Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$2;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$2;-><init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;Landroid/os/Looper;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mMessageHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->syncObjForSmartcardEngine:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;)Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mSmartCardHelper:Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->isEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;)Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mInitState:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->shouldInit:Z

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;
    .locals 3

    const-class v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->instance_:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/base/ActivityStatus;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SBrowserSmartcardWrapper"

    const-string v2, "getInstance() can\'t get activity!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->instance_:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->instance_:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyListnersForFinished(Z)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->syncObjForFinishedCb:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v2, "SBrowserSmartcardWrapper"

    const-string v4, "SBrowserSmartcardWrapper > notifyListnersForFinished"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->listenersForFinished:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->listenersForFinished:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$OnFinishedCb;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$OnFinishedCb;->OnFinished(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->listenersForFinished:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private notifyListnersForStatusChanged(Z)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->syncObjForStatusChangedCb:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v2, "SBrowserSmartcardWrapper"

    const-string v4, "SBrowserSmartcardWrapper > notifyListnersForStatusChanged"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->listenersForStatusChanged:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->listenersForStatusChanged:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$OnStatusChangedCb;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$OnStatusChangedCb;->OnStatusChanged(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public beSureInit()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->init()V

    return-void
.end method

.method public canUseSmartcard()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->isEnabled:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mInitState:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    sget-object v2, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->INITIALIZING:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mInitState:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    sget-object v2, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->INITIALIZED:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected clearLoadingFrameList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mLoadingFrameList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method protected declared-synchronized deinitialize()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SBrowserSmartcardWrapper"

    const-string v1, "deinitialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mInitState:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->NOT_INITIALIZED:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mInitState:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->FINALIZING:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mInitState:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->INITIALIZING:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->shouldInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->FINALIZING:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mInitState:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$4;-><init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public doStopLoading(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->canUseSmartcard()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mLoadingFrameList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SBrowserSmartcardWrapper"

    const-string v1, "doStopLoading tab is not in list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mLoadingFrameList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const-string v0, "SBrowserSmartcardWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStopLoading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mLoadingFrameList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tabs are in loading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mLoadingFrameList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->useSslNormalContext()V

    goto :goto_0
.end method

.method public declared-synchronized init()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->isEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->shouldInit:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mInitState:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->NOT_INITIALIZED:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    if-ne v0, v1, :cond_0

    const-string v0, "SBrowserSmartcardWrapper"

    const-string v1, "SBrowserSmartcardWrapper > init() NOT_INITIALIZED start initialize helper"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->INITIALIZING:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mInitState:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$3;-><init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitComplete()V
    .locals 4

    const-string v1, "SBrowserSmartcardWrapper"

    const-string v2, "SBrowserSmartcardWrapper > onInitComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mSmartCardHelper:Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;->registerProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SBrowserSmartcardWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerProvider success, provider name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->INITIALIZED:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mInitState:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    const-string v1, "SBrowserSmartcardWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBrowserSmartcardWrapper > OnInitCompleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mInitState:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SBrowserSmartcardWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBrowserSmartcardWrapper > OnInitCompleted shoudInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->shouldInit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->shouldInit:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->deinitialize()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->notifyListnersForFinished(Z)V

    :goto_1
    return-void

    :cond_0
    const-string v1, "SBrowserSmartcardWrapper"

    const-string v2, "registerProvider failed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->notifyListnersForFinished(Z)V

    goto :goto_1
.end method

.method public onLoadStarted(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->canUseSmartcard()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mLoadingFrameList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SBrowserSmartcardWrapper"

    const-string v1, "onLoadStarted tab is already in list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mLoadingFrameList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v0, "SBrowserSmartcardWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadStarted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mLoadingFrameList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tabs are in loading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSBrowserPolicyChanged(Z)V
    .locals 2

    const-string v0, "SBrowserSmartcardWrapper"

    const-string v1, "SBrowserSmartcardWrapper > onSBrowserPolicyChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->isEnabled:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->isEnabled:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->isEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->init()V

    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->isEnabled:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->notifyListnersForStatusChanged(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->deinitialize()V

    goto :goto_1
.end method

.method public onStatusChanged(I)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "SBrowserSmartcardWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBrowserSmartcardWrapper > onStatusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->NOT_INITIALIZED:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mInitState:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->notifyListnersForFinished(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->notifyListnersForStatusChanged(Z)V

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->useSslNormalContext()V

    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;->NOT_INITIALIZED:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mInitState:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SMARTCARD_STATUS;

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->notifyListnersForFinished(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->notifyListnersForStatusChanged(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeOnStatusChangedCb(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$OnStatusChangedCb;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->syncObjForStatusChangedCb:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "SBrowserSmartcardWrapper"

    const-string v2, "SBrowserSmartcardWrapper > removeOnStatusChangedCb"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->listenersForStatusChanged:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

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

.method public setOnFinishedCb(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$OnFinishedCb;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->syncObjForFinishedCb:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "SBrowserSmartcardWrapper"

    const-string v2, "SBrowserSmartcardWrapper > setOnFinishedCb"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->listenersForFinished:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

.method public setOnStatusChangedCb(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$OnStatusChangedCb;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->syncObjForStatusChangedCb:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "SBrowserSmartcardWrapper"

    const-string v2, "SBrowserSmartcardWrapper > setOnStatusChangedCb"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->listenersForStatusChanged:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

.method public useSslNormalContext()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->canUseSmartcard()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SBrowserSmartcardWrapper"

    const-string v1, "useSslNormalContext() can\'t use smartcard now! ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->clearLoadingFrameList()V

    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mMessageHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mMessageHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SBrowserSmartcardWrapper"

    const-string v1, "useSslNormalContext : MSG_SET_SMARTCARD_SSL_CONTEXT is processing. ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mMessageHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1b58

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public useSslSmartcardContext(Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;)V
    .locals 7

    const/16 v6, 0xc8

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->canUseSmartcard()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SBrowserSmartcardWrapper"

    const-string v3, "useSslSmartcardContext() can\'t use smartcard now!. ignored"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mMessageHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SBrowserSmartcardWrapper"

    const-string v3, "useSslSmartcardContext : message is already in message handler. ignored"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mMessageHandler:Landroid/os/Handler;

    const-wide/32 v3, 0x493e0

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v5, v1, Landroid/os/Message;->what:I

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SmartcardMsgObj;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SmartcardMsgObj;-><init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
