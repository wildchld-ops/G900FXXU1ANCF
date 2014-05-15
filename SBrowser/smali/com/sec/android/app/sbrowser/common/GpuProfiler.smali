.class public Lcom/sec/android/app/sbrowser/common/GpuProfiler;
.super Ljava/lang/Object;
.source "GpuProfiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerBroadcastReceiver;,
        Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerIntentFilter;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "chrome"
.end annotation


# static fields
.field private static final ACTION_START:Ljava/lang/String; = "com.sec.android.app.sbrowser.GPU_PROFILER_START"

.field private static final ACTION_STOP:Ljava/lang/String; = "com.sec.android.app.sbrowser.GPU_PROFILER_STOP"

.field private static final FILE_EXTRA:Ljava/lang/String; = "file"

.field private static final TAG:Ljava/lang/String; = "GpuProfiler"


# instance fields
.field private final mBroadcastReceiver:Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerBroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mFilename:Ljava/lang/String;

.field private final mIntentFilter:Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerIntentFilter;

.field private mIsProfiling:Z

.field private mNativeGpuProfiler:I

.field private mShowToasts:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerBroadcastReceiver;-><init>(Lcom/sec/android/app/sbrowser/common/GpuProfiler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mBroadcastReceiver:Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerBroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerIntentFilter;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerIntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mIntentFilter:Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerIntentFilter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mShowToasts:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeInit()I
.end method

.method private native nativeStartProfiling(ILjava/lang/String;)Z
.end method

.method private native nativeStopProfiling(I)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mNativeGpuProfiler:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mNativeGpuProfiler:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->nativeDestroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mNativeGpuProfiler:I

    :cond_0
    return-void
.end method

.method public getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mBroadcastReceiver:Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerBroadcastReceiver;

    return-object v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mIntentFilter:Lcom/sec/android/app/sbrowser/common/GpuProfiler$ProfilerIntentFilter;

    return-object v0
.end method

.method public getOutputPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public isProfiling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mIsProfiling:Z

    return v0
.end method

.method logAndToastError(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GpuProfiler"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mShowToasts:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method logAndToastInfo(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GpuProfiler"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mShowToasts:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected onProfilingStopped()V
    .locals 5
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GpuProfiler"

    const-string v1, "Received onProfilingStopped, but we aren\'t profiling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00a5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mFilename:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->logAndToastInfo(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->setEnabledToMatchNative()V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mIsProfiling:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mFilename:Ljava/lang/String;

    goto :goto_0
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public startProfiling(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mShowToasts:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->isProfiling()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "GpuProfiler"

    const-string v2, "Received startProfiling, but we\'re already profiling"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mNativeGpuProfiler:I

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->nativeInit()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mNativeGpuProfiler:I

    :cond_1
    iget v2, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mNativeGpuProfiler:I

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->nativeStartProfiling(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->logAndToastError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00a4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->logAndToastInfo(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->setEnabledToMatchNative()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mFilename:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mIsProfiling:Z

    move v0, v1

    goto :goto_0
.end method

.method public startProfiling(Z)Z
    .locals 6

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mShowToasts:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00a6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->logAndToastError(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd-HHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chrome-profile-results-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->startProfiling(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_0
.end method

.method public stopProfiling()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->isProfiling()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->mNativeGpuProfiler:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->nativeStopProfiling(I)V

    :cond_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/GpuProfiler;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
