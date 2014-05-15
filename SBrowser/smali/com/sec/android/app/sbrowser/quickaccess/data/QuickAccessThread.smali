.class public Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;
.super Ljava/lang/Object;
.source "QuickAccessThread.java"


# static fields
.field private static quickAccessThread:Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;


# instance fields
.field private threadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->quickAccessThread:Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    const-string v0, "QuickAccessThread"

    const-string v1, " QuickAccessThread creating new ExecutorService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getQuickAccessThread()Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->quickAccessThread:Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;

    return-object v0
.end method


# virtual methods
.method public runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public shutDown()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method
