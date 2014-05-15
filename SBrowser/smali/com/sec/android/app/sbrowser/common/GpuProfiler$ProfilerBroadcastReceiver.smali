.class Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GpuProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/GpuProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProfilerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/GpuProfiler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/GpuProfiler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerBroadcastReceiver;->this$0:Lcom/sec/android/app/sbrowser/common/GpuProfiler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "com.sec.android.app.sbrowser.GPU_PROFILER_START"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "file"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerBroadcastReceiver;->this$0:Lcom/sec/android/app/sbrowser/common/GpuProfiler;

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->startProfiling(Ljava/lang/String;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerBroadcastReceiver;->this$0:Lcom/sec/android/app/sbrowser/common/GpuProfiler;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->startProfiling(Z)Z

    goto :goto_0

    :cond_1
    const-string v1, "com.sec.android.app.sbrowser.GPU_PROFILER_STOP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerBroadcastReceiver;->this$0:Lcom/sec/android/app/sbrowser/common/GpuProfiler;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->stopProfiling()V

    goto :goto_0

    :cond_2
    const-string v1, "GpuProfiler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
