.class public Lcom/nuance/connect/location/SwypeLocationManager;
.super Ljava/lang/Object;
.source "SwypeLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/location/SwypeLocationManager$3;,
        Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;
    }
.end annotation


# static fields
.field private static final CHECK_ONCE_GPS_TIMEOUT:I = 0x7530

.field private static final DEFAULT_DISTANCE_FINDER:F = 10000.0f

.field private static final DEFAULT_MIN_DISTANCE_FINDER:F = 100.0f

.field private static final DEFAULT_MIN_TIME_FINDER:J = 0xea60L

.field private static final DEFAULT_TIME_FINDER:J = 0x36ee80L

.field private static final MSG_GPS_LOCATION_TIMEOUT:I = 0x7d1

.field private static final MSG_LOCATION_PROCESSED_CHECK:I = 0x7d0

.field private static final STALE_INTERVAL:I = 0x36ee80

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private volatile aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

.field private allowedGps:Z

.field private allowedNetwork:Z

.field private allowedPassive:Z

.field private attemptOnceGPS:Z

.field private attemptOnceNetwork:Z

.field private ctx:Landroid/content/Context;

.field private volatile currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

.field private gpsEnabled:Z

.field private volatile gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field private hasCoarse:Z

.field private hasFine:Z

.field private volatile lastLocation:Lcom/nuance/connect/location/SwypeLocation;

.field private lastLocationProcessed:J

.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nuance/connect/location/SwypeLocationListener;",
            "Lcom/nuance/connect/location/SwypeLocationSettings;",
            ">;"
        }
    .end annotation
.end field

.field private locationLevel:I

.field private volatile locationManager:Landroid/location/LocationManager;

.field private final mHandler:Landroid/os/Handler;

.field private networkEnabled:Z

.field private volatile networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

.field private passiveListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-string v1, "SwypeLocationManager"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->listeners:Ljava/util/Map;

    iput v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationLevel:I

    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsEnabled:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkEnabled:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedPassive:Z

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->lastLocationProcessed:J

    sget-object v0, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceNetwork:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceGPS:Z

    new-instance v0, Lcom/nuance/connect/location/SwypeLocationManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/SwypeLocationManager$1;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->handlerCallback:Landroid/os/Handler$Callback;

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/connect/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iput p2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationLevel:I

    invoke-direct {p0}, Lcom/nuance/connect/location/SwypeLocationManager;->setupLocationService()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/location/SwypeLocationManager;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/location/SwypeLocationManager;->processLocationUpdate(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/location/SwypeLocationManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/connect/location/SwypeLocationManager;)Lcom/nuance/connect/location/SwypeLocationSettings;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/connect/location/SwypeLocationManager;Lcom/nuance/connect/location/SwypeLocation;Lcom/nuance/connect/location/SwypeLocationSettings;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/location/SwypeLocationManager;->sendUpdate(Lcom/nuance/connect/location/SwypeLocation;Lcom/nuance/connect/location/SwypeLocationSettings;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/location/SwypeLocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/location/SwypeLocationManager;->setupLocationService()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/location/SwypeLocationManager;)Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/location/SwypeLocationManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/location/SwypeLocationManager;->updateActiveListeners(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/location/SwypeLocationManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->lastLocationProcessed:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/location/SwypeLocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/location/SwypeLocationManager;->attemptFetchOnce()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/connect/location/SwypeLocationManager;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/location/SwypeLocationManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceGPS:Z

    return v0
.end method

.method static synthetic access$900(Lcom/nuance/connect/location/SwypeLocationManager;)Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/nuance/connect/location/SwypeLocationManager;Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;)Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    return-object p1
.end method

.method private attemptFetchOnce()V
    .locals 9

    const-wide/32 v7, 0xea60

    const-wide/16 v2, 0x0

    const/16 v6, 0x7d0

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "attemptFetchOnce()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/location/SwypeLocationSettings;->getActiveSearch()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, " -- not allowed to active search."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceNetwork:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    if-nez v0, :cond_3

    iput-boolean v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceNetwork:Z

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceGPS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    if-nez v0, :cond_0

    iput-boolean v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceGPS:Z

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d1

    iget-object v3, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private isBetterLocation(Lcom/nuance/connect/location/SwypeLocation;Lcom/nuance/connect/location/SwypeLocation;)Z
    .locals 11

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocation;->getTime()J

    move-result-wide v7

    invoke-virtual {p2}, Lcom/nuance/connect/location/SwypeLocation;->getTime()J

    move-result-wide v9

    sub-long v3, v7, v9

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_1

    move v2, v5

    :goto_0
    const-wide/32 v7, 0x36ee80

    cmp-long v7, v3, v7

    if-lez v7, :cond_2

    move v1, v5

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v2, v6

    goto :goto_0

    :cond_2
    const-wide/32 v7, -0x36ee80

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    move v1, v6

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocation;->getAccuracy()F

    move-result v6

    invoke-virtual {p2}, Lcom/nuance/connect/location/SwypeLocation;->getAccuracy()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v0, v6

    if-gez v0, :cond_4

    move v1, v5

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    move v1, v5

    goto :goto_1
.end method

.method private declared-synchronized processLocationUpdate(Landroid/location/Location;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    sget-object v1, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Recieved Location Update, but was null. Not Processing."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->lastLocationProcessed:J

    new-instance v0, Lcom/nuance/connect/location/SwypeLocation;

    invoke-direct {v0, p1}, Lcom/nuance/connect/location/SwypeLocation;-><init>(Landroid/location/Location;)V

    sget-object v1, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location Update: Time: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Provider: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Acuracy: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Long: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Lat: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->lastLocation:Lcom/nuance/connect/location/SwypeLocation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->lastLocation:Lcom/nuance/connect/location/SwypeLocation;

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/location/SwypeLocationManager;->isBetterLocation(Lcom/nuance/connect/location/SwypeLocation;Lcom/nuance/connect/location/SwypeLocation;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Not a better location then the previous last location. Stopping Processing."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    if-nez v1, :cond_3

    sget-object v1, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Error processing location update without configuration"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/nuance/connect/location/SwypeLocationManager;->updateActiveListeners(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-virtual {v1}, Lcom/nuance/connect/location/SwypeLocationSettings;->getGeoCode()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-virtual {v3}, Lcom/nuance/connect/location/SwypeLocationSettings;->getLastGeocodeTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-virtual {v3}, Lcom/nuance/connect/location/SwypeLocationSettings;->getGeocodeInterval()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    sget-object v1, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "handle Geo Coding now, firing off thread"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/location/SwypeLocationSettings;->setLastGeocodeTime(J)V

    new-instance v1, Lcom/nuance/connect/location/SwypeLocationManager$2;

    invoke-direct {v1, p0, v0}, Lcom/nuance/connect/location/SwypeLocationManager$2;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;Lcom/nuance/connect/location/SwypeLocation;)V

    invoke-virtual {v1}, Lcom/nuance/connect/location/SwypeLocationManager$2;->start()V

    sget-object v1, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "handle Geo Coding -- completed"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :goto_1
    iget-boolean v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceGPS:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    :cond_4
    iget-boolean v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceNetwork:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/location/SwypeLocationManager;->sendUpdate(Lcom/nuance/connect/location/SwypeLocation;Lcom/nuance/connect/location/SwypeLocationSettings;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized sendUpdate(Lcom/nuance/connect/location/SwypeLocation;Lcom/nuance/connect/location/SwypeLocationSettings;)V
    .locals 6

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/location/SwypeLocationListener;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-virtual {v3}, Lcom/nuance/connect/location/SwypeLocationSettings;->markUpdate()V

    invoke-virtual {v3}, Lcom/nuance/connect/location/SwypeLocationSettings;->shouldContinue()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2, p1}, Lcom/nuance/connect/location/SwypeLocationListener;->onLocationComplete(Lcom/nuance/connect/location/SwypeLocation;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v2, p1}, Lcom/nuance/connect/location/SwypeLocationListener;->onLocation(Lcom/nuance/connect/location/SwypeLocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->lastLocation:Lcom/nuance/connect/location/SwypeLocation;

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/nuance/connect/location/SwypeLocationManager;->updateActiveListeners(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method private setupLocationService()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/location/SwypeLocationManager;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    iput-boolean v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsEnabled:Z

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkEnabled:Z

    iget v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationLevel:I

    packed-switch v0, :pswitch_data_0

    :goto_3
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setup of Location Service: Level: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fine: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] course: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] allowed gps: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] network: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] passive: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedPassive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/location/SwypeLocationManager;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :pswitch_0
    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedPassive:Z

    goto :goto_3

    :pswitch_1
    iput-boolean v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedPassive:Z

    goto/16 :goto_3

    :cond_4
    move v1, v2

    goto :goto_4

    :pswitch_2
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedPassive:Z

    goto/16 :goto_3

    :cond_5
    move v1, v2

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startNewLocationPattern(Lcom/nuance/connect/location/SwypeLocationSettings;)V
    .locals 10

    const/high16 v4, 0x42c8

    const-wide/32 v8, 0xea60

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocationSettings;->getMode()Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting new location pattern for mode: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    sget-object v1, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Unable to aquire location manager."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationLevel:I

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "No valid permissions for location."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    sget-object v1, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    if-eq v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    if-eqz v0, :cond_5

    const-string v0, "network"

    invoke-virtual {p1, v0}, Lcom/nuance/connect/location/SwypeLocationSettings;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "---- last network requested"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-direct {p0, v7}, Lcom/nuance/connect/location/SwypeLocationManager;->processLocationUpdate(Landroid/location/Location;)V

    :cond_5
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    if-eqz v0, :cond_6

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Lcom/nuance/connect/location/SwypeLocationSettings;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "---- last gps requested"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-direct {p0, v6}, Lcom/nuance/connect/location/SwypeLocationManager;->processLocationUpdate(Landroid/location/Location;)V

    :cond_6
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager$3;->$SwitchMap$com$nuance$connect$location$SwypeLocationSettings$LocationMode:[I

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1}, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_7
    :goto_1
    :pswitch_0
    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed Starting new location pattern for mode: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    iget-object v3, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    if-eqz v0, :cond_8

    new-instance v0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->passiveListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->passiveListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1

    :cond_8
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    if-eqz v0, :cond_7

    new-instance v0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0x36ee80

    const v4, 0x461c4000

    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    if-eqz v0, :cond_9

    new-instance v0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->passiveListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->passiveListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_9
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    if-eqz v0, :cond_a

    const-string v0, "network"

    invoke-virtual {p1, v0}, Lcom/nuance/connect/location/SwypeLocationSettings;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_a
    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    if-eqz v0, :cond_7

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Lcom/nuance/connect/location/SwypeLocationSettings;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private stopCurrentLocationPattern()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->passiveListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->passiveListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->passiveListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->networkListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    :cond_2
    return-void
.end method

.method private declared-synchronized updateActiveListeners(Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "updateActiveListeners()"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v2, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    new-instance v3, Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-direct {v3, v2}, Lcom/nuance/connect/location/SwypeLocationSettings;-><init>(Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;)V

    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/location/SwypeLocationSettings;

    invoke-virtual {v4}, Lcom/nuance/connect/location/SwypeLocationSettings;->getMode()Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/nuance/connect/location/SwypeLocationSettings;->getMaxMode(Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;)Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    move-result-object v2

    invoke-virtual {v3, v4}, Lcom/nuance/connect/location/SwypeLocationSettings;->merge(Lcom/nuance/connect/location/SwypeLocationSettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/nuance/connect/location/SwypeLocationManager;->currentMode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v2, v5}, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    if-nez p1, :cond_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/nuance/connect/location/SwypeLocationManager;->stopCurrentLocationPattern()V

    sget-object v5, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v2, v5}, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/nuance/connect/location/SwypeLocationManager;->startNewLocationPattern(Lcom/nuance/connect/location/SwypeLocationSettings;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public allowedPassive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedPassive:Z

    return v0
.end method

.method public checkPermission(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedGps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedNetwork:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->allowedPassive:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerListener(Lcom/nuance/connect/location/SwypeLocationListener;Lcom/nuance/connect/location/SwypeLocationSettings;)V
    .locals 2

    sget-object v0, Lcom/nuance/connect/location/SwypeLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "registerListener()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/connect/location/SwypeLocationSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->lastLocation:Lcom/nuance/connect/location/SwypeLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->lastLocation:Lcom/nuance/connect/location/SwypeLocation;

    invoke-interface {p1, v0}, Lcom/nuance/connect/location/SwypeLocationListener;->onLocation(Lcom/nuance/connect/location/SwypeLocation;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/connect/location/SwypeLocationManager;->updateActiveListeners(Z)V

    return-void
.end method

.method public unregisterListener(Lcom/nuance/connect/location/SwypeLocationListener;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/nuance/connect/location/SwypeLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/location/SwypeLocationListener;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/connect/location/SwypeLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/nuance/connect/location/SwypeLocationManager;->updateActiveListeners(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v4

    goto :goto_0
.end method
