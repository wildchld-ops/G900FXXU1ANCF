.class public Lcom/samsung/mms/location/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareDouble(DD)Z
    .locals 8

    const-wide v6, 0x3f1a36e2e0000000L

    const-wide v4, 0x3f1a36e2e0000000L

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/mms/location/Utils;->compareDouble(DDD)Z

    move-result v0

    return v0
.end method

.method public static compareDouble(DDD)Z
    .locals 2

    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compareFloat(FF)Z
    .locals 2

    const v0, 0x38d1b717

    const v1, 0x38d1b717

    invoke-static {p0, p1, v1}, Lcom/samsung/mms/location/Utils;->compareFloat(FFF)Z

    move-result v1

    return v1
.end method

.method public static compareFloat(FFF)Z
    .locals 1

    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
