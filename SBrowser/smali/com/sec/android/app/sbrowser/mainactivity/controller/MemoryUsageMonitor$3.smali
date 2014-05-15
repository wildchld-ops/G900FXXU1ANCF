.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$3;
.super Ljava/lang/Object;
.source "MemoryUsageMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->handleLowMemoryThreshold(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$3;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$3;->val$context:Landroid/content/Context;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$3;->val$context:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    if-eqz v2, :cond_0

    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4090

    div-double/2addr v4, v6

    double-to-int v1, v4

    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-double v4, v4

    const-wide/high16 v6, 0x3ff8

    mul-double/2addr v4, v6

    double-to-int v3, v4

    if-ge v1, v3, :cond_0

    const-string v4, "MemoryUsageMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exceeded memory threshold - try to clean up. availMem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", threshold"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    sub-int v5, v3, v1

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->freeMemoryExceedingThreshold(I)V
    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;I)V

    goto :goto_0
.end method
