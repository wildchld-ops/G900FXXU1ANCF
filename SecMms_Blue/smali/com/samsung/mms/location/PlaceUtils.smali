.class public Lcom/samsung/mms/location/PlaceUtils;
.super Ljava/lang/Object;
.source "PlaceUtils.java"


# static fields
.field public static final INTENT_FILTER:Ljava/lang/String; = "attachment/location"

.field private static final phoneNumberTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/mms/location/PlaceUtils;->phoneNumberTypes:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/mms/location/PlaceUtils;->phoneNumberTypes:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/mms/location/PlaceUtils;->phoneNumberTypes:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/mms/location/PlaceUtils;->phoneNumberTypes:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/mms/location/PlaceUtils;->phoneNumberTypes:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/mms/location/PlaceUtils;->phoneNumberTypes:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/mms/location/PlaceUtils;->phoneNumberTypes:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNBIPlaceFromSDK(Lcom/samsung/mms/location/Place;)Lcom/nbi/map/data/Place;
    .locals 13

    const/4 v1, 0x0

    new-instance v0, Lcom/nbi/map/data/MapLocation;

    invoke-virtual {p0}, Lcom/samsung/mms/location/Place;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/mms/location/Place;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/mms/location/Place;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/mms/location/Place;->getPostalCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/mms/location/Place;->getCountry()Ljava/lang/String;

    move-result-object v8

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v8}, Lcom/nbi/map/data/MapLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/mms/location/Place;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nbi/map/data/MapLocation;->setLatitude(D)V

    invoke-virtual {p0}, Lcom/samsung/mms/location/Place;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nbi/map/data/MapLocation;->setLongitude(D)V

    new-instance v10, Lcom/nbi/map/data/Place;

    invoke-virtual {p0}, Lcom/samsung/mms/location/Place;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2, v0}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/String;Lcom/nbi/map/data/MapLocation;)V

    invoke-virtual {p0}, Lcom/samsung/mms/location/Place;->getPhoneNumbers()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {p0}, Lcom/samsung/mms/location/Place;->getPhoneNumbers()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-instance v3, Lcom/nbi/map/data/Phone;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/mms/location/PlaceUtils;->getNBIPhoneType(I)I

    move-result v2

    invoke-direct {v3, v2, v1, v1, v11}, Lcom/nbi/map/data/Phone;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Lcom/nbi/map/data/Place;->addPhoneNumber(Lcom/nbi/map/data/Phone;)V

    goto :goto_0

    :cond_0
    return-object v10
.end method

.method public static createSDKPlaceFromNBI(Lcom/nbi/map/data/Place;)Lcom/samsung/mms/location/Place;
    .locals 9

    new-instance v4, Lcom/samsung/mms/location/PlaceBuilder;

    invoke-direct {v4}, Lcom/samsung/mms/location/PlaceBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/nbi/map/data/Place;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/mms/location/PlaceBuilder;->setName(Ljava/lang/String;)Lcom/samsung/mms/location/PlaceBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/nbi/map/data/Place;->getPhoneNumberCount()I

    move-result v6

    if-ge v1, v6, :cond_0

    invoke-virtual {p0, v1}, Lcom/nbi/map/data/Place;->getPhoneNumber(I)Lcom/nbi/map/data/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Phone;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v6, Lcom/samsung/mms/location/PlaceUtils;->phoneNumberTypes:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/nbi/map/data/Phone;->getPhoneType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v7, v6}, Lcom/samsung/mms/location/PlaceBuilder;->addPhoneNumber(Ljava/lang/String;I)Lcom/samsung/mms/location/PlaceBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getStreet()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    const-string v5, " "

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getStreet()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/samsung/mms/location/PlaceBuilder;->setLatitude(D)Lcom/samsung/mms/location/PlaceBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/samsung/mms/location/PlaceBuilder;->setLongitude(D)Lcom/samsung/mms/location/PlaceBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/samsung/mms/location/PlaceBuilder;->setAddress(Ljava/lang/String;)Lcom/samsung/mms/location/PlaceBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getCity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/mms/location/PlaceBuilder;->setCity(Ljava/lang/String;)Lcom/samsung/mms/location/PlaceBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/mms/location/PlaceBuilder;->setState(Ljava/lang/String;)Lcom/samsung/mms/location/PlaceBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/mms/location/PlaceBuilder;->setCountry(Ljava/lang/String;)Lcom/samsung/mms/location/PlaceBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getPostalCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/mms/location/PlaceBuilder;->setPostalCode(Ljava/lang/String;)Lcom/samsung/mms/location/PlaceBuilder;

    invoke-virtual {v4}, Lcom/samsung/mms/location/PlaceBuilder;->buildPlace()Lcom/samsung/mms/location/Place;

    move-result-object v6

    return-object v6

    :cond_1
    const-string v5, ""

    goto :goto_1
.end method

.method private static getNBIPhoneType(I)I
    .locals 3

    sget-object v2, Lcom/samsung/mms/location/PlaceUtils;->phoneNumberTypes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
