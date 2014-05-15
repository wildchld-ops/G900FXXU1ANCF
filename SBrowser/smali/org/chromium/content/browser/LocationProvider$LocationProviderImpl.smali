.class Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;
.super Ljava/lang/Object;
.source "LocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lorg/chromium/base/ActivityStatus$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationProviderImpl"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsGpsEnabled:Z

.field private mIsRunning:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mShouldRunAfterActivityResume:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/content/browser/LocationProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->start(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->stop()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;)Z
    .locals 1

    invoke-direct {p0}, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->isRunning()Z

    move-result v0

    return v0
.end method

.method private static createCoarseCriteria()Landroid/location/Criteria;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    return-object v0
.end method

.method private static createFineCriteria()Landroid/location/Criteria;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    return-object v0
.end method

.method private ensureLocationManagerCreated()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "LocationProvider"

    const-string v1, "Could not get location manager."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mIsRunning:Z

    return v0
.end method

.method private registerForLocationUpdates()V
    .locals 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->ensureLocationManagerCreated()V

    sget-boolean v0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mIsRunning:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-boolean v2, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mIsRunning:Z

    :try_start_0
    new-instance v9, Landroid/location/Criteria;

    invoke-direct {v9}, Landroid/location/Criteria;-><init>()V

    iget-object v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {}, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->createCoarseCriteria()Landroid/location/Criteria;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :goto_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mIsGpsEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    iget-object v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {}, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->createFineCriteria()Landroid/location/Criteria;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v6, v9

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v10

    const-string v0, "LocationProvider"

    const-string v2, "Caught security exception registering for location updates from system. This should only happen in DumpRenderTree."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v6, v9

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v10

    const-string v0, "LocationProvider"

    const-string v2, "Caught IllegalArgumentException registering for location updates."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private start(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mIsRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mShouldRunAfterActivityResume:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/chromium/base/ActivityStatus;->registerStateListener(Lorg/chromium/base/ActivityStatus$StateListener;)V

    :cond_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mIsGpsEnabled:Z

    invoke-static {}, Lorg/chromium/base/ActivityStatus;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mShouldRunAfterActivityResume:Z

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->unregisterFromLocationUpdates()V

    invoke-direct {p0}, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->registerForLocationUpdates()V

    goto :goto_0
.end method

.method private stop()V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->unregisterFromLocationUpdates()V

    invoke-static {p0}, Lorg/chromium/base/ActivityStatus;->unregisterStateListener(Lorg/chromium/base/ActivityStatus$StateListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mShouldRunAfterActivityResume:Z

    return-void
.end method

.method private unregisterFromLocationUpdates()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mIsRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mIsRunning:Z

    iget-object v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityStateChange(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mIsRunning:Z

    iput-boolean v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mShouldRunAfterActivityResume:Z

    invoke-direct {p0}, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->unregisterFromLocationUpdates()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mIsRunning:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mShouldRunAfterActivityResume:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->registerForLocationUpdates()V

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->mIsRunning:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v12

    float-to-double v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v15

    float-to-double v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v2 .. v19}, Lorg/chromium/content/browser/LocationProvider;->nativeNewLocationAvailable(DDDZDZDZDZD)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
