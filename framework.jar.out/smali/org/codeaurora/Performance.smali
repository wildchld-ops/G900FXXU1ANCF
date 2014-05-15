.class public Lorg/codeaurora/Performance;
.super Ljava/lang/Object;
.source "Performance.java"


# static fields
.field public static final ALL_CPUS_FREQ_NONTURBO_MAX:I = 0x90a

.field public static final ALL_CPUS_FREQ_TURBO_MAX:I = 0x9fe

.field public static final ALL_CPUS_PWR_CLPS_DIS:I = 0x100

.field public static final CPU0_FREQ_NONTURBO_MAX:I = 0x20a

.field public static final CPU0_FREQ_TURBO_MAX:I = 0x2fe

.field public static final CPU1_FREQ_NONTURBO_MAX:I = 0x30a

.field public static final CPU1_FREQ_TURBO_MAX:I = 0x3fe

.field public static final CPU2_FREQ_NONTURBO_MAX:I = 0x40a

.field public static final CPU2_FREQ_TURBO_MAX:I = 0x4fe

.field public static final CPU3_FREQ_NONTURBO_MAX:I = 0x50a

.field public static final CPU3_FREQ_TURBO_MAX:I = 0x5fe

.field public static final CPUOPT_CPU0_FREQMIN:I = 0x2

.field public static final CPUOPT_CPU0_PWRCLSP:I = 0x1

.field public static final CPUOPT_CPU1_FREQMIN:I = 0x3

.field public static final CPUS_ON_2:I = 0x702

.field public static final CPUS_ON_3:I = 0x703

.field public static final CPUS_ON_LIMIT_1:I = 0x7fe

.field public static final CPUS_ON_LIMIT_2:I = 0x7fd

.field public static final CPUS_ON_LIMIT_3:I = 0x7fc

.field public static final CPUS_ON_MAX:I = 0x704

.field public static final REQUEST_FAILED:I = -0x1

.field public static final REQUEST_SUCCEEDED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Perf"


# instance fields
.field private handle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/Performance;->handle:I

    return-void
.end method

.method private native native_cpu_setoptions(II)I
.end method

.method private native native_deinit()V
.end method

.method private native native_perf_lock_acq(II[I)I
.end method

.method private native native_perf_lock_rel(I)I
.end method


# virtual methods
.method public cpuSetOptions(II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/Performance;->native_cpu_setoptions(II)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/Performance;->native_deinit()V

    return-void
.end method

.method public varargs perfLockAcquire(I[I)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lorg/codeaurora/Performance;->handle:I

    invoke-direct {p0, v1, p1, p2}, Lorg/codeaurora/Performance;->native_perf_lock_acq(II[I)I

    move-result v1

    iput v1, p0, Lorg/codeaurora/Performance;->handle:I

    iget v1, p0, Lorg/codeaurora/Performance;->handle:I

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public perfLockRelease()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/Performance;->handle:I

    invoke-direct {p0, v0}, Lorg/codeaurora/Performance;->native_perf_lock_rel(I)I

    move-result v0

    return v0
.end method

.method public setCpuBoost()V
    .locals 4

    const/4 v2, 0x4

    new-array v1, v2, [I

    const/16 v0, 0x7d0

    const/4 v2, 0x0

    const/16 v3, 0x100

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x704

    aput v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x2fe

    aput v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x3fe

    aput v3, v1, v2

    const/16 v2, 0x7d0

    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    return-void
.end method
