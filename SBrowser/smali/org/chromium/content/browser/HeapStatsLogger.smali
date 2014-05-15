.class public Lorg/chromium/content/browser/HeapStatsLogger;
.super Ljava/lang/Object;
.source "HeapStatsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/HeapStatsLogger$1;,
        Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerReceiver;,
        Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerIntentFilter;
    }
.end annotation


# static fields
.field private static final ACTION_LOG:Ljava/lang/String; = "com.google.android.apps.chrome.LOG_HEAP_STATS"

.field private static final TAG:Ljava/lang/String; = "HeapStatsLogger"

.field private static sHeapStats:Lorg/chromium/content/browser/HeapStatsLogger;


# instance fields
.field private mBroadcastReceiver:Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerReceiver;

.field private mIntentFilter:Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerIntentFilter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    new-instance v0, Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerReceiver;-><init>(Lorg/chromium/content/browser/HeapStatsLogger;Lorg/chromium/content/browser/HeapStatsLogger$1;)V

    iput-object v0, p0, Lorg/chromium/content/browser/HeapStatsLogger;->mBroadcastReceiver:Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerReceiver;

    new-instance v0, Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerIntentFilter;

    invoke-direct {v0}, Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerIntentFilter;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/HeapStatsLogger;->mIntentFilter:Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerIntentFilter;

    iget-object v0, p0, Lorg/chromium/content/browser/HeapStatsLogger;->mBroadcastReceiver:Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerReceiver;

    iget-object v1, p0, Lorg/chromium/content/browser/HeapStatsLogger;->mIntentFilter:Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerIntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/HeapStatsLogger;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/HeapStatsLogger;->log()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v0

    const-string v1, "enable-test-intents"

    invoke-virtual {v0, v1}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/content/browser/HeapStatsLogger;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/HeapStatsLogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/content/browser/HeapStatsLogger;->sHeapStats:Lorg/chromium/content/browser/HeapStatsLogger;

    :cond_0
    return-void
.end method

.method private log()V
    .locals 3

    const-string v0, "HeapStatsLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "heap_stats gc_count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "alloc_count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "alloc_size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "freed_count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "freed_size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
