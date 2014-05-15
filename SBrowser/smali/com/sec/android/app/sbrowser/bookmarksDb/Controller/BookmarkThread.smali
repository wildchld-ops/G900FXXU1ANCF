.class public Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;
.super Ljava/lang/Object;
.source "BookmarkThread.java"


# static fields
.field private static bookmarkThread:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;


# instance fields
.field private threadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->bookmarkThread:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    const-string v0, "BookmarkThread"

    const-string v1, " BookmarkThread creating new ExecutorService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getBookmarkThread()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->bookmarkThread:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;

    return-object v0
.end method


# virtual methods
.method public runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public shutDown()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method
