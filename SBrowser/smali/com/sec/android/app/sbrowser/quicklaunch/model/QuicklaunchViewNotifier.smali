.class public Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;
.super Ljava/lang/Object;
.source "QuicklaunchViewNotifier.java"


# static fields
.field public static final MOSTVISITED_REMOVE:I = 0x1

.field private static mHandler:Landroid/os/Handler;

.field private static mIModelObserverArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static mQuicklaunchModelNotifier:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->mQuicklaunchModelNotifier:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->mIModelObserverArrayList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->mostvisitedDeleted()V

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->mQuicklaunchModelNotifier:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->mQuicklaunchModelNotifier:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->mQuicklaunchModelNotifier:Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;

    return-object v0
.end method

.method private static mostvisitedDeleted()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->mIModelObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->mIModelObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;->modelPropertyChanged(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public registerQuicklaunchIObserver(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->mIModelObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->mIModelObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterQuicklaunchIObserver(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->mIModelObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->mIModelObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
