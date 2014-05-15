.class public Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;
.super Ljava/lang/Object;
.source "SBrowserTabSyncNotifier.java"


# static fields
.field private static mSBrowserTabSyncNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mITabSyncObserverArrayList:Ljava/util/ArrayList;
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

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mSBrowserTabSyncNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mITabSyncObserverArrayList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier$1;-><init>(Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->tabSyncCompleted()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mSBrowserTabSyncNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mSBrowserTabSyncNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mSBrowserTabSyncNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;

    return-object v0
.end method

.method private tabSyncCompleted()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mITabSyncObserverArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mITabSyncObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mITabSyncObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    const/16 v2, 0x15

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public registerTabIObserver(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mITabSyncObserverArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mITabSyncObserverArrayList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mITabSyncObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mITabSyncObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public unregisterTabIObserver(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mITabSyncObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mITabSyncObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mITabSyncObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->mITabSyncObserverArrayList:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method
