.class public Lorg/chromium/content/common/CleanupReference;
.super Ljava/lang/ref/WeakReference;
.source "CleanupReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADD_REF:I = 0x1

.field private static final DEBUG:Z = false

.field private static final REMOVE_REF:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CleanupReference"

.field private static sCleanupMonitor:Ljava/lang/Object;

.field private static sGcQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Landroid/os/Handler;

.field private static final sReaperThread:Ljava/lang/Thread;

.field private static sRefs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/chromium/content/common/CleanupReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCleanupTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lorg/chromium/content/common/CleanupReference;->sGcQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/content/common/CleanupReference;->sCleanupMonitor:Ljava/lang/Object;

    new-instance v0, Lorg/chromium/content/common/CleanupReference$1;

    const-string v1, "CleanupReference"

    invoke-direct {v0, v1}, Lorg/chromium/content/common/CleanupReference$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/content/common/CleanupReference;->sReaperThread:Ljava/lang/Thread;

    sget-object v0, Lorg/chromium/content/common/CleanupReference;->sReaperThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    sget-object v0, Lorg/chromium/content/common/CleanupReference;->sReaperThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lorg/chromium/content/common/CleanupReference$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/content/common/CleanupReference$2;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/chromium/content/common/CleanupReference;->sHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/chromium/content/common/CleanupReference;->sRefs:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lorg/chromium/content/common/CleanupReference;->sGcQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p2, p0, Lorg/chromium/content/common/CleanupReference;->mCleanupTask:Ljava/lang/Runnable;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/common/CleanupReference;->handleOnUiThread(I)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    sget-object v0, Lorg/chromium/content/common/CleanupReference;->sGcQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/chromium/content/common/CleanupReference;->sCleanupMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lorg/chromium/content/common/CleanupReference;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Set;
    .locals 1

    sget-object v0, Lorg/chromium/content/common/CleanupReference;->sRefs:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/common/CleanupReference;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/common/CleanupReference;->runCleanupTaskInternal()V

    return-void
.end method

.method private handleOnUiThread(I)V
    .locals 3

    sget-object v1, Lorg/chromium/content/common/CleanupReference;->sHandler:Landroid/os/Handler;

    invoke-static {v1, p1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lorg/chromium/content/common/CleanupReference;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/chromium/content/common/CleanupReference;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private runCleanupTaskInternal()V
    .locals 1

    sget-object v0, Lorg/chromium/content/common/CleanupReference;->sRefs:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/chromium/content/common/CleanupReference;->mCleanupTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/common/CleanupReference;->mCleanupTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/common/CleanupReference;->mCleanupTask:Ljava/lang/Runnable;

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/common/CleanupReference;->clear()V

    return-void
.end method


# virtual methods
.method public cleanupNow()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/content/common/CleanupReference;->handleOnUiThread(I)V

    return-void
.end method
