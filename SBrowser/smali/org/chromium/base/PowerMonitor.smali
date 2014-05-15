.class public Lorg/chromium/base/PowerMonitor;
.super Ljava/lang/Object;
.source "PowerMonitor.java"

# interfaces
.implements Lorg/chromium/base/ActivityStatus$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/PowerMonitor$LazyHolder;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "base::android"
.end annotation


# static fields
.field private static final SUSPEND_DELAY_MS:J = 0xea60L

.field private static sInstance:Lorg/chromium/base/PowerMonitor;

.field private static final sSuspendTask:Ljava/lang/Runnable;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsBatteryPower:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/base/PowerMonitor$1;

    invoke-direct {v0}, Lorg/chromium/base/PowerMonitor$1;-><init>()V

    sput-object v0, Lorg/chromium/base/PowerMonitor;->sSuspendTask:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/base/PowerMonitor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/base/PowerMonitor$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/PowerMonitor;-><init>()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lorg/chromium/base/PowerMonitor;->nativeOnMainActivitySuspended()V

    return-void
.end method

.method public static create(Landroid/content/Context;)V
    .locals 3

    sget-object v2, Lorg/chromium/base/PowerMonitor;->sInstance:Lorg/chromium/base/PowerMonitor;

    if-nez v2, :cond_0

    invoke-static {}, Lorg/chromium/base/PowerMonitor$LazyHolder;->access$200()Lorg/chromium/base/PowerMonitor;

    move-result-object v2

    sput-object v2, Lorg/chromium/base/PowerMonitor;->sInstance:Lorg/chromium/base/PowerMonitor;

    sget-object v2, Lorg/chromium/base/PowerMonitor;->sInstance:Lorg/chromium/base/PowerMonitor;

    invoke-static {v2}, Lorg/chromium/base/ActivityStatus;->registerStateListener(Lorg/chromium/base/ActivityStatus$StateListener;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/PowerMonitor;->onBatteryChargingChanged(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static createForTests(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/PowerMonitor$LazyHolder;->access$200()Lorg/chromium/base/PowerMonitor;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/PowerMonitor;->sInstance:Lorg/chromium/base/PowerMonitor;

    return-void
.end method

.method private static isBatteryPower()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/base/PowerMonitor;->sInstance:Lorg/chromium/base/PowerMonitor;

    iget-boolean v0, v0, Lorg/chromium/base/PowerMonitor;->mIsBatteryPower:Z

    return v0
.end method

.method private static native nativeOnBatteryChargingChanged()V
.end method

.method private static native nativeOnMainActivityResumed()V
.end method

.method private static native nativeOnMainActivitySuspended()V
.end method

.method public static onBatteryChargingChanged(Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x1

    sget-object v2, Lorg/chromium/base/PowerMonitor;->sInstance:Lorg/chromium/base/PowerMonitor;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "plugged"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Lorg/chromium/base/PowerMonitor;->sInstance:Lorg/chromium/base/PowerMonitor;

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_1

    :goto_1
    iput-boolean v1, v2, Lorg/chromium/base/PowerMonitor;->mIsBatteryPower:Z

    invoke-static {}, Lorg/chromium/base/PowerMonitor;->nativeOnBatteryChargingChanged()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onActivityStateChange(I)V
    .locals 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/chromium/base/PowerMonitor;->mHandler:Landroid/os/Handler;

    sget-object v1, Lorg/chromium/base/PowerMonitor;->sSuspendTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/chromium/base/PowerMonitor;->nativeOnMainActivityResumed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/PowerMonitor;->mHandler:Landroid/os/Handler;

    sget-object v1, Lorg/chromium/base/PowerMonitor;->sSuspendTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
