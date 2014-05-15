.class public Lorg/chromium/content/common/PerfTraceEvent;
.super Ljava/lang/Object;
.source "PerfTraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/common/PerfTraceEvent$EventType;
    }
.end annotation


# static fields
.field private static final MAX_NAME_LENGTH:I = 0x28

.field private static final MEMORY_TRACE_NAME_SUFFIX:Ljava/lang/String; = "_BZR_PSS"

.field private static sBeginNanoTime:J

.field private static sEnabled:Z

.field private static sFilter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOutputFile:Ljava/io/File;

.field private static sPerfTraceStrings:Lorg/json/JSONArray;

.field private static sTrackMemory:Z

.field private static sTrackTiming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/content/common/PerfTraceEvent;->sOutputFile:Ljava/io/File;

    sput-boolean v1, Lorg/chromium/content/common/PerfTraceEvent;->sEnabled:Z

    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/content/common/PerfTraceEvent;->sTrackTiming:Z

    sput-boolean v1, Lorg/chromium/content/common/PerfTraceEvent;->sTrackMemory:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized begin(Ljava/lang/String;)V
    .locals 6

    const-class v3, Lorg/chromium/content/common/PerfTraceEvent;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v0, v2

    invoke-static {p0, v0, v1}, Lorg/chromium/content/common/TraceEvent;->startAsync(Ljava/lang/String;J)V

    sget-boolean v2, Lorg/chromium/content/common/PerfTraceEvent;->sEnabled:Z

    if-eqz v2, :cond_1

    invoke-static {p0}, Lorg/chromium/content/common/PerfTraceEvent;->matchesFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lorg/chromium/content/common/PerfTraceEvent;->sTrackMemory:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Lorg/chromium/content/common/PerfTraceEvent;->makeMemoryTraceNameFromTimingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/chromium/content/common/PerfTraceEvent$EventType;->START:Lorg/chromium/content/common/PerfTraceEvent$EventType;

    const/4 v5, 0x1

    invoke-static {v2, v0, v1, v4, v5}, Lorg/chromium/content/common/PerfTraceEvent;->savePerfString(Ljava/lang/String;JLorg/chromium/content/common/PerfTraceEvent$EventType;Z)V

    :cond_0
    sget-boolean v2, Lorg/chromium/content/common/PerfTraceEvent;->sTrackTiming:Z

    if-eqz v2, :cond_1

    sget-object v2, Lorg/chromium/content/common/PerfTraceEvent$EventType;->START:Lorg/chromium/content/common/PerfTraceEvent$EventType;

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v2, v4}, Lorg/chromium/content/common/PerfTraceEvent;->savePerfString(Ljava/lang/String;JLorg/chromium/content/common/PerfTraceEvent$EventType;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized begin(Ljava/lang/String;Landroid/os/Debug$MemoryInfo;)V
    .locals 12

    const-class v7, Lorg/chromium/content/common/PerfTraceEvent;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v1, v0

    invoke-static {p0, v1, v2}, Lorg/chromium/content/common/TraceEvent;->startAsync(Ljava/lang/String;J)V

    sget-boolean v0, Lorg/chromium/content/common/PerfTraceEvent;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/chromium/content/common/PerfTraceEvent;->matchesFilter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sget-wide v10, Lorg/chromium/content/common/PerfTraceEvent;->sBeginNanoTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long v4, v8, v10

    invoke-static {p0}, Lorg/chromium/content/common/PerfTraceEvent;->makeMemoryTraceNameFromTimingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/chromium/content/common/PerfTraceEvent$EventType;->START:Lorg/chromium/content/common/PerfTraceEvent$EventType;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lorg/chromium/content/common/PerfTraceEvent;->savePerfString(Ljava/lang/String;JLorg/chromium/content/common/PerfTraceEvent$EventType;JLandroid/os/Debug$MemoryInfo;)V

    sget-boolean v0, Lorg/chromium/content/common/PerfTraceEvent;->sTrackTiming:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/content/common/PerfTraceEvent$EventType;->START:Lorg/chromium/content/common/PerfTraceEvent$EventType;

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v0, v3}, Lorg/chromium/content/common/PerfTraceEvent;->savePerfString(Ljava/lang/String;JLorg/chromium/content/common/PerfTraceEvent$EventType;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private static dumpPerf()V
    .locals 6

    sget-object v3, Lorg/chromium/content/common/PerfTraceEvent;->sPerfTraceStrings:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/chromium/content/common/PerfTraceEvent;->sOutputFile:Ljava/io/File;

    if-nez v3, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v4, Lorg/chromium/content/common/PerfTraceEvent;->sOutputFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "PerfTraceEvent"

    const-string v4, "Unable to close perf trace output file."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "PerfTraceEvent"

    const-string v4, "Unable to dump perf trace data to output file."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    :try_start_5
    throw v3

    :catch_2
    move-exception v0

    const-string v4, "PerfTraceEvent"

    const-string v5, "Unable to close perf trace output file."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method public static declared-synchronized enabled()Z
    .locals 2

    const-class v0, Lorg/chromium/content/common/PerfTraceEvent;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lorg/chromium/content/common/PerfTraceEvent;->sEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized end(Ljava/lang/String;)V
    .locals 6

    const-class v3, Lorg/chromium/content/common/PerfTraceEvent;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v0, v2

    invoke-static {p0, v0, v1}, Lorg/chromium/content/common/TraceEvent;->finishAsync(Ljava/lang/String;J)V

    sget-boolean v2, Lorg/chromium/content/common/PerfTraceEvent;->sEnabled:Z

    if-eqz v2, :cond_1

    invoke-static {p0}, Lorg/chromium/content/common/PerfTraceEvent;->matchesFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lorg/chromium/content/common/PerfTraceEvent;->sTrackTiming:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/chromium/content/common/PerfTraceEvent$EventType;->FINISH:Lorg/chromium/content/common/PerfTraceEvent$EventType;

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v2, v4}, Lorg/chromium/content/common/PerfTraceEvent;->savePerfString(Ljava/lang/String;JLorg/chromium/content/common/PerfTraceEvent$EventType;Z)V

    :cond_0
    sget-boolean v2, Lorg/chromium/content/common/PerfTraceEvent;->sTrackMemory:Z

    if-eqz v2, :cond_1

    invoke-static {p0}, Lorg/chromium/content/common/PerfTraceEvent;->makeMemoryTraceNameFromTimingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/chromium/content/common/PerfTraceEvent$EventType;->FINISH:Lorg/chromium/content/common/PerfTraceEvent$EventType;

    const/4 v5, 0x1

    invoke-static {v2, v0, v1, v4, v5}, Lorg/chromium/content/common/PerfTraceEvent;->savePerfString(Ljava/lang/String;JLorg/chromium/content/common/PerfTraceEvent$EventType;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized end(Ljava/lang/String;Landroid/os/Debug$MemoryInfo;)V
    .locals 12

    const-class v7, Lorg/chromium/content/common/PerfTraceEvent;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v1, v0

    invoke-static {p0, v1, v2}, Lorg/chromium/content/common/TraceEvent;->finishAsync(Ljava/lang/String;J)V

    sget-boolean v0, Lorg/chromium/content/common/PerfTraceEvent;->sEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/chromium/content/common/PerfTraceEvent;->matchesFilter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/chromium/content/common/PerfTraceEvent;->sTrackTiming:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/content/common/PerfTraceEvent$EventType;->FINISH:Lorg/chromium/content/common/PerfTraceEvent$EventType;

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v0, v3}, Lorg/chromium/content/common/PerfTraceEvent;->savePerfString(Ljava/lang/String;JLorg/chromium/content/common/PerfTraceEvent$EventType;Z)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sget-wide v10, Lorg/chromium/content/common/PerfTraceEvent;->sBeginNanoTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long v4, v8, v10

    invoke-static {p0}, Lorg/chromium/content/common/PerfTraceEvent;->makeMemoryTraceNameFromTimingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/chromium/content/common/PerfTraceEvent$EventType;->FINISH:Lorg/chromium/content/common/PerfTraceEvent$EventType;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lorg/chromium/content/common/PerfTraceEvent;->savePerfString(Ljava/lang/String;JLorg/chromium/content/common/PerfTraceEvent$EventType;JLandroid/os/Debug$MemoryInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized instant(Ljava/lang/String;)V
    .locals 5

    const-class v3, Lorg/chromium/content/common/PerfTraceEvent;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v0, v2

    invoke-static {p0}, Lorg/chromium/content/common/TraceEvent;->instant(Ljava/lang/String;)V

    sget-boolean v2, Lorg/chromium/content/common/PerfTraceEvent;->sEnabled:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Lorg/chromium/content/common/PerfTraceEvent;->matchesFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/chromium/content/common/PerfTraceEvent$EventType;->INSTANT:Lorg/chromium/content/common/PerfTraceEvent$EventType;

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v2, v4}, Lorg/chromium/content/common/PerfTraceEvent;->savePerfString(Ljava/lang/String;JLorg/chromium/content/common/PerfTraceEvent$EventType;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static makeMemoryTraceNameFromTimingName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "_BZR_PSS"

    invoke-static {p0, v0}, Lorg/chromium/content/common/PerfTraceEvent;->makeSafeTraceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeSafeTraceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    rsub-int/lit8 v2, v0, 0x28

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static matchesFilter(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/chromium/content/common/PerfTraceEvent;->sFilter:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/content/common/PerfTraceEvent;->sFilter:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static savePerfString(Ljava/lang/String;JLorg/chromium/content/common/PerfTraceEvent$EventType;JLandroid/os/Debug$MemoryInfo;)V
    .locals 5

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "cat"

    const-string v4, "Java"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ts"

    invoke-virtual {v2, v3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "ph"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "name"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p6, :cond_0

    iget v3, p6, Landroid/os/Debug$MemoryInfo;->nativePss:I

    iget v4, p6, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    add-int/2addr v3, v4

    iget v4, p6, Landroid/os/Debug$MemoryInfo;->otherPss:I

    add-int v1, v3, v4

    const-string v3, "mem"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    sget-object v3, Lorg/chromium/content/common/PerfTraceEvent;->sPerfTraceStrings:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static savePerfString(Ljava/lang/String;JLorg/chromium/content/common/PerfTraceEvent$EventType;Z)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lorg/chromium/content/common/PerfTraceEvent;->sBeginNanoTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    const/4 v6, 0x0

    if-eqz p4, :cond_0

    new-instance v6, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v6}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v6}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lorg/chromium/content/common/PerfTraceEvent;->savePerfString(Ljava/lang/String;JLorg/chromium/content/common/PerfTraceEvent$EventType;JLandroid/os/Debug$MemoryInfo;)V

    return-void
.end method

.method public static declared-synchronized setEnabled(Z)V
    .locals 4

    const-class v1, Lorg/chromium/content/common/PerfTraceEvent;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lorg/chromium/content/common/PerfTraceEvent;->sEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    if-eqz p0, :cond_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sput-wide v2, Lorg/chromium/content/common/PerfTraceEvent;->sBeginNanoTime:J

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lorg/chromium/content/common/PerfTraceEvent;->sPerfTraceStrings:Lorg/json/JSONArray;

    :goto_1
    sput-boolean p0, Lorg/chromium/content/common/PerfTraceEvent;->sEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lorg/chromium/content/common/PerfTraceEvent;->dumpPerf()V

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/content/common/PerfTraceEvent;->sPerfTraceStrings:Lorg/json/JSONArray;

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/content/common/PerfTraceEvent;->sFilter:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized setFilter(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v1, Lorg/chromium/content/common/PerfTraceEvent;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/chromium/content/common/PerfTraceEvent;->sFilter:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setMemoryTrackingEnabled(Z)V
    .locals 2

    const-class v0, Lorg/chromium/content/common/PerfTraceEvent;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lorg/chromium/content/common/PerfTraceEvent;->sTrackMemory:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setOutputFile(Ljava/io/File;)V
    .locals 2

    const-class v0, Lorg/chromium/content/common/PerfTraceEvent;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/chromium/content/common/PerfTraceEvent;->sOutputFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setTimingTrackingEnabled(Z)V
    .locals 2

    const-class v0, Lorg/chromium/content/common/PerfTraceEvent;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lorg/chromium/content/common/PerfTraceEvent;->sTrackTiming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
