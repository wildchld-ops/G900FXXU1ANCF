.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$5;
.super Ljava/lang/Object;
.source "MemoryUsageMonitor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->freeMemory(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/sbrowser/common/Tab;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

.field final synthetic val$foregroundPid:I

.field final synthetic val$memoryUsageByRenderer:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;ILjava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$5;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    iput p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$5;->val$foregroundPid:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$5;->val$memoryUsageByRenderer:Ljava/util/HashMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/Tab;)I
    .locals 12

    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPid()I

    move-result v2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPid()I

    move-result v3

    if-eq v2, v3, :cond_3

    iget v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$5;->val$foregroundPid:I

    if-ne v2, v8, :cond_0

    move v8, v9

    :goto_0
    return v8

    :cond_0
    iget v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$5;->val$foregroundPid:I

    if-ne v3, v8, :cond_1

    move v8, v10

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$5;->val$memoryUsageByRenderer:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$5;->val$memoryUsageByRenderer:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_2

    move v8, v10

    goto :goto_0

    :cond_2
    if-ge v0, v1, :cond_5

    move v8, v9

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getLastShownTimestamp()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/Tab;->getLastShownTimestamp()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    move v8, v10

    goto :goto_0

    :cond_4
    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    move v8, v9

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/Tab;

    check-cast p2, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$5;->compare(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v0

    return v0
.end method
