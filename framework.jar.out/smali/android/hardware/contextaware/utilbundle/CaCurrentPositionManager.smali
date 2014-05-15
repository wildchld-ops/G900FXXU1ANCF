.class public Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/ICurrentPositionObservable;
.implements Landroid/hardware/contextaware/utilbundle/IUtilManager;
.implements Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;
    }
.end annotation


# static fields
.field private static final ACCURACY_BEST_THRESHOLE:F = 16.0f

.field private static final ACCURACY_GOOD_THRESHOLE:F = 50.0f

.field private static final GPS_MIN_DISTANCE:F = 0.0f

.field private static final GPS_MIN_TIME:J = 0x3e8L

.field public static final GPS_TYPE:I = 0x1

.field public static final NONE_TYPE:I = 0x0

.field public static final WPS_TYPE:I = 0x2


# instance fields
.field private mEnable:Z

.field private mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

.field private final mGpsListener:Landroid/location/LocationListener;

.field private mGpsManager:Landroid/location/LocationManager;

.field private mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

.field private final mLooper:Landroid/os/Looper;

.field private mPrePosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

.field private mTimeOutCheck:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

.field private mTimeOutCheckThreadHandler:Ljava/lang/Thread;

.field private mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

.field private final mWpsListener:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$1;-><init>(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$2;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$2;-><init>(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    iput-object p2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->initializeManager(Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->registerCurrentPositionObserver(Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;)V

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;DD)D
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->calculationDistance(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)Ljava/util/Iterator;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->getGpsSatellites()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->registerGpsListener()V

    return-void
.end method

.method static synthetic access$600(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->registerWpsListener()V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->unregisterGpsListener()V

    return-void
.end method

.method static synthetic access$800(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->unregisterWpsListener()V

    return-void
.end method

.method private calculationDistance(DD)D
    .locals 8

    const-wide/high16 v6, 0x4000

    const-wide/16 v4, 0x0

    const-wide/high16 v0, -0x4010

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->latitude:D
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$900(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->longitude:D
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->latitude:D
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$900(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v2

    sub-double v2, p1, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object v4, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->longitude:D
    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v4

    sub-double v4, p3, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private clearTimeOutCheckService()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    iput-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method private getGpsSatellites()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method private registerGpsListener()V
    .locals 7

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method private registerWpsListener()V
    .locals 7

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method private unregisterGpsListener()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method private unregisterWpsListener()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method private updateEmptyPosition()V
    .locals 15

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v14, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    invoke-direct {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;-><init>()V

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->type:I
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v1

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->utcTime:[I
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1200(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)[I

    move-result-object v2

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->latitude:D
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$900(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v3

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->longitude:D
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v5

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->altitude:D
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v7

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->distance:D
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1400(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v9

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->speed:F
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1500(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F

    move-result v11

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->accuracy:F
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F

    move-result v12

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->satelliteCount:I
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1600(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v13

    invoke-interface/range {v0 .. v13}, Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_0
.end method

.method private updateGpsPosition()V
    .locals 14

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->type:I
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->utcTime:[I
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1200(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)[I

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->latitude:D
    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$900(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v3

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->longitude:D
    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v5

    iget-object v7, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->altitude:D
    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v7

    iget-object v9, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->distance:D
    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1400(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v9

    iget-object v11, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->speed:F
    invoke-static {v11}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1500(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F

    move-result v11

    iget-object v12, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->accuracy:F
    invoke-static {v12}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F

    move-result v12

    iget-object v13, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->satelliteCount:I
    invoke-static {v13}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1600(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v13

    invoke-interface/range {v0 .. v13}, Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_0
.end method

.method private updateWpsPosition()V
    .locals 14

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->type:I
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->utcTime:[I
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1200(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)[I

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->latitude:D
    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$900(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v3

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->longitude:D
    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v5

    iget-object v7, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->altitude:D
    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v7

    iget-object v9, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->distance:D
    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1400(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v9

    iget-object v11, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->speed:F
    invoke-static {v11}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1500(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F

    move-result v11

    iget-object v12, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->accuracy:F
    invoke-static {v12}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F

    move-result v12

    iget-object v13, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->satelliteCount:I
    invoke-static {v13}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1600(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v13

    invoke-interface/range {v0 .. v13}, Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_0
.end method


# virtual methods
.method public final disable()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->clearTimeOutCheckService()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$4;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$4;-><init>(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    goto :goto_0
.end method

.method public final enable(I)V
    .locals 4

    const/high16 v1, 0x447a

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    const-string v0, "Looper is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_2

    const-string v0, "mEnable value is true."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->disable()V

    :cond_2
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;-><init>(F)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;-><init>(F)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->clearTimeOutCheckService()V

    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v0, p0, p1}, Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;-><init>(Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;I)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$3;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$3;-><init>(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 2

    const/high16 v1, 0x447a

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;-><init>(F)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;-><init>(F)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    return-void
.end method

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    return v0
.end method

.method public final notifyCurrentPositionObserver()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->disable()V

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->type:I
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->accuracy:F
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F

    move-result v0

    const/high16 v1, 0x4248

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->updateGpsPosition()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->type:I
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->updateWpsPosition()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->updateEmptyPosition()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->type:I
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->updateWpsPosition()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->updateEmptyPosition()V

    goto :goto_0
.end method

.method public final occurTimeOut()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->notifyCurrentPositionObserver()V

    return-void
.end method

.method public final registerCurrentPositionObserver(Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    return-void
.end method

.method public final terminateManager()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public final unregisterCurrentPositionObserver()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    return-void
.end method
