.class Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerIntentFilter;
.super Landroid/content/IntentFilter;
.source "HeapStatsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/HeapStatsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeapStatsLoggerIntentFilter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.google.android.apps.chrome.LOG_HEAP_STATS"

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/HeapStatsLogger$HeapStatsLoggerIntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method
