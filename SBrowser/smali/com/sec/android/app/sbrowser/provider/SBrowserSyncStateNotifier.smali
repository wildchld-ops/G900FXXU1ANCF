.class public Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
.super Ljava/lang/Object;
.source "SBrowserSyncStateNotifier.java"


# static fields
.field private static mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSyncStateObserverArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier$1;-><init>(Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->syncStarted()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->tabSyncStarted()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->bookmarkSyncStarted()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->savedPagesSyncStarted()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->syncCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->tabSyncCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->bookmarkSyncCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method private bookmarkSyncCompleted(Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    const/16 v2, 0x14

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;->modelPropertyChanged(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarkSyncStarted()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;->modelPropertyChanged(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    return-object v0
.end method

.method private savedPagesSyncStarted()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;->modelPropertyChanged(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private syncCompleted(Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    const/16 v2, 0x17

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;->modelPropertyChanged(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private syncStarted()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    const/16 v2, 0x18

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;->modelPropertyChanged(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private tabSyncCompleted(Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    const/16 v2, 0x15

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;->modelPropertyChanged(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private tabSyncStarted()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;->modelPropertyChanged(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public registerSyncStateObserver(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected savedPagesSyncCompleted(Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    const/16 v2, 0x16

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;->modelPropertyChanged(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unregisterSyncStateObserver(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->mSyncStateObserverArrayList:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method
