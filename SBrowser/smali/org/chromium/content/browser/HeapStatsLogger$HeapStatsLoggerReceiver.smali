.class Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeapStatsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/HeapStatsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeapStatsLoggerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/HeapStatsLogger;


# direct methods
.method private constructor <init>(Lorg/chromium/content/browser/HeapStatsLogger;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerReceiver;->this$0:Lorg/chromium/content/browser/HeapStatsLogger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/HeapStatsLogger;Lorg/chromium/content/browser/HeapStatsLogger$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerReceiver;-><init>(Lorg/chromium/content/browser/HeapStatsLogger;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "com.google.android.apps.chrome.LOG_HEAP_STATS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerReceiver;->this$0:Lorg/chromium/content/browser/HeapStatsLogger;

    #calls: Lorg/chromium/content/browser/HeapStatsLogger;->log()V
    invoke-static {v0}, Lorg/chromium/content/browser/HeapStatsLogger;->access$100(Lorg/chromium/content/browser/HeapStatsLogger;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "HeapStatsLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
