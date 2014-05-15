.class Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerIntentFilter;
.super Landroid/content/IntentFilter;
.source "GpuProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/GpuProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfilerIntentFilter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.sec.android.app.sbrowser.GPU_PROFILER_START"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerIntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.sbrowser.GPU_PROFILER_STOP"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerIntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method
