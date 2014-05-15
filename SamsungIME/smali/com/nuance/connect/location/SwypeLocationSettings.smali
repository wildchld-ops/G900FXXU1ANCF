.class public Lcom/nuance/connect/location/SwypeLocationSettings;
.super Ljava/lang/Object;
.source "SwypeLocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;
    }
.end annotation


# instance fields
.field private activeSearch:Z

.field private geoCodeInterval:J

.field private geocode:Z

.field private interval:J

.field private lastGeocode:J

.field private mode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

.field private totalTime:J

.field private typeRequested:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;)V
    .locals 5

    const/4 v4, 0x0

    const-wide/high16 v2, -0x8000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->mode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->typeRequested:Ljava/util/HashSet;

    iput-wide v2, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->interval:J

    iput-wide v2, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->totalTime:J

    iput-boolean v4, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->geocode:Z

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->geoCodeInterval:J

    iput-wide v2, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->lastGeocode:J

    iput-boolean v4, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->activeSearch:Z

    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->mode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;JZ)V
    .locals 5

    const/4 v4, 0x0

    const-wide/high16 v2, -0x8000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->mode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->typeRequested:Ljava/util/HashSet;

    iput-wide v2, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->interval:J

    iput-wide v2, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->totalTime:J

    iput-boolean v4, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->geocode:Z

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->geoCodeInterval:J

    iput-wide v2, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->lastGeocode:J

    iput-boolean v4, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->activeSearch:Z

    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->mode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    iput-wide p2, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->interval:J

    iput-boolean p4, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->geocode:Z

    return-void
.end method

.method public static getMaxMode(Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;)Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method


# virtual methods
.method public addType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->typeRequested:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearTypes()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->typeRequested:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public getActiveSearch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->activeSearch:Z

    return v0
.end method

.method public getGeoCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->geocode:Z

    return v0
.end method

.method public getGeocodeInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->geoCodeInterval:J

    return-wide v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->interval:J

    return-wide v0
.end method

.method public getLastGeocodeTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->lastGeocode:J

    return-wide v0
.end method

.method public getMode()Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->mode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    return-object v0
.end method

.method public getTotalTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->totalTime:J

    return-wide v0
.end method

.method public getTypes()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->typeRequested:Ljava/util/HashSet;

    return-object v0
.end method

.method public hasType(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->typeRequested:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public markUpdate()V
    .locals 0

    return-void
.end method

.method public merge(Lcom/nuance/connect/location/SwypeLocationSettings;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocationSettings;->getMode()Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/connect/location/SwypeLocationSettings;->getMode()Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/nuance/connect/location/SwypeLocationSettings;->getMaxMode(Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;)Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/location/SwypeLocationSettings;->setMode(Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;)V

    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocationSettings;->getInterval()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/nuance/connect/location/SwypeLocationSettings;->getInterval()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/nuance/connect/location/SwypeLocationSettings;->setInterval(J)V

    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocationSettings;->getGeoCode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/location/SwypeLocationSettings;->getGeoCode()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/connect/location/SwypeLocationSettings;->setGeocode(Z)V

    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocationSettings;->getGeoCode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/connect/location/SwypeLocationSettings;->getGeoCode()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/nuance/connect/location/SwypeLocationSettings;->setGeocode(Z)V

    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocationSettings;->getGeocodeInterval()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/nuance/connect/location/SwypeLocationSettings;->getGeocodeInterval()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/nuance/connect/location/SwypeLocationSettings;->setGeocodeInterval(J)V

    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocationSettings;->getLastGeocodeTime()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/nuance/connect/location/SwypeLocationSettings;->getLastGeocodeTime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/nuance/connect/location/SwypeLocationSettings;->setLastGeocodeTime(J)V

    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocationSettings;->getActiveSearch()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/connect/location/SwypeLocationSettings;->getActiveSearch()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Lcom/nuance/connect/location/SwypeLocationSettings;->setActiveSearch(Z)V

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->typeRequested:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/nuance/connect/location/SwypeLocationSettings;->getTypes()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public setActiveSearch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->activeSearch:Z

    return-void
.end method

.method public setGeocode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->geocode:Z

    return-void
.end method

.method public setGeocodeInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->geoCodeInterval:J

    return-void
.end method

.method public setInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->interval:J

    return-void
.end method

.method public setLastGeocodeTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->lastGeocode:J

    return-void
.end method

.method public setMode(Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->mode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    return-void
.end method

.method public setTotalTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->totalTime:J

    return-void
.end method

.method public shouldContinue()Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationSettings;->mode:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    sget-object v1, Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;->GET_LOCATION:Lcom/nuance/connect/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
