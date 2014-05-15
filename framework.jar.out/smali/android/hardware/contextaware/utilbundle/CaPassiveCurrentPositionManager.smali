.class public Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;
.super Ljava/lang/Object;
.source "CaPassiveCurrentPositionManager.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/IPassiveCurrentPositionObservable;
.implements Landroid/hardware/contextaware/utilbundle/IUtilManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;
    }
.end annotation


# static fields
.field public static final GPS_TYPE:I = 0x1

.field public static final NONE_TYPE:I

.field private static mPassiveCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;


# instance fields
.field private mEnable:Z

.field private mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

.field private final mGpsListener:Landroid/location/LocationListener;

.field private mGpsManager:Landroid/location/LocationManager;

.field private mListener:Landroid/hardware/contextaware/manager/IPassiveCurrrentPositionObserver;

.field private final mLooper:Landroid/os/Looper;

.field private mPrePosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

.field private mTimeOutCheck:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

.field private mTimeOutCheckThreadHandler:Ljava/lang/Thread;

.field private final m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPassiveCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/manager/IPassiveCurrrentPositionObserver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;-><init>(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$2;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$2;-><init>(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;

    iput-object p2, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    const-string v0, "CaPassiveCurrentPositionManager"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->initializeManager(Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->registerPassiveCurrentPositionObserver(Landroid/hardware/contextaware/manager/IPassiveCurrrentPositionObserver;)V

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;DD)D
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->calculationDistance(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->registerGpsListener()V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->unregisterGpsListener()V

    return-void
.end method

.method private calculationDistance(DD)D
    .locals 8

    const-wide/high16 v6, 0x4000

    const-wide/16 v4, 0x0

    const-wide/high16 v0, -0x4010

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->latitude:D
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->access$400(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->longitude:D
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->access$500(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->latitude:D
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->access$400(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)D

    move-result-wide v2

    sub-double v2, p1, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object v4, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->longitude:D
    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->access$500(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)D

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

.method public static getInstance(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/manager/IPassiveCurrrentPositionObserver;)Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPassiveCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    if-nez v0, :cond_0

    const-string v0, "mPassiveCurrentPosition == null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/manager/IPassiveCurrrentPositionObserver;)V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPassiveCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    :cond_0
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPassiveCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    return-object v0
.end method

.method private registerGpsListener()V
    .locals 7

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "registerGpsListener"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    goto :goto_0
.end method

.method private unregisterGpsListener()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "unregisterGpsListener"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method private updateGpsPosition()V
    .locals 14

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/IPassiveCurrrentPositionObserver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/IPassiveCurrrentPositionObserver;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->type:I
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->access$600(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->utcTime:[I
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->access$700(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)[I

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->latitude:D
    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->access$400(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)D

    move-result-wide v3

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->longitude:D
    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->access$500(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)D

    move-result-wide v5

    iget-object v7, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->altitude:D
    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->access$800(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)D

    move-result-wide v7

    iget-object v9, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->distance:D
    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->access$900(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)D

    move-result-wide v9

    iget-object v11, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->speed:F
    invoke-static {v11}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->access$1000(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)F

    move-result v11

    iget-object v12, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->accuracy:F
    invoke-static {v12}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->access$1100(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)F

    move-result v12

    iget-object v13, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->satelliteCount:I
    invoke-static {v13}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->access$1200(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)I

    move-result v13

    invoke-interface/range {v0 .. v13}, Landroid/hardware/contextaware/manager/IPassiveCurrrentPositionObserver;->updatePassiveCurrentPosition(I[IDDDDFFI)V

    goto :goto_0
.end method


# virtual methods
.method public final disable()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "caPassivecurrentpositionmanager disable"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$4;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$4;-><init>(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    goto :goto_0
.end method

.method public final enable()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    const-string v0, "Looper is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_2

    const-string v0, "mEnable value is true."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->disable()V

    :cond_2
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    const/high16 v1, 0x447a

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;-><init>(F)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$3;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$3;-><init>(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 2

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    const/high16 v1, 0x447a

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;-><init>(F)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    return-void
.end method

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    return v0
.end method

.method public final notifyPassiveCurrentPositionObserver()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/IPassiveCurrrentPositionObserver;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    #getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->type:I
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->access$600(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->updateGpsPosition()V

    goto :goto_0
.end method

.method public final registerPassiveCurrentPositionObserver(Landroid/hardware/contextaware/manager/IPassiveCurrrentPositionObserver;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/IPassiveCurrrentPositionObserver;

    return-void
.end method

.method public final terminateManager()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPassiveCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    goto :goto_0
.end method

.method public final unregisterPassiveCurrentPositionObserver()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/IPassiveCurrrentPositionObserver;

    return-void
.end method
