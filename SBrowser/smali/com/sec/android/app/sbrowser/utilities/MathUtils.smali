.class public Lcom/sec/android/app/sbrowser/utilities/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field public static SPEED_FAST:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3da3d70a

    sput v0, Lcom/sec/android/app/sbrowser/utilities/MathUtils;->SPEED_FAST:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(FFF)F
    .locals 3

    cmpl-float v2, p1, p2

    if-lez v2, :cond_1

    move v0, p2

    move v1, p1

    :goto_0
    cmpg-float v2, p0, v0

    if-gez v2, :cond_2

    move p0, v0

    :cond_0
    :goto_1
    return p0

    :cond_1
    move v0, p1

    move v1, p2

    goto :goto_0

    :cond_2
    cmpl-float v2, p0, v1

    if-lez v2, :cond_0

    move p0, v1

    goto :goto_1
.end method

.method public static clamp(III)I
    .locals 2

    if-le p1, p2, :cond_1

    move v1, p2

    move v0, p1

    :goto_0
    if-ge p0, v1, :cond_2

    move p0, v1

    :cond_0
    :goto_1
    return p0

    :cond_1
    move v1, p1

    move v0, p2

    goto :goto_0

    :cond_2
    if-le p0, v0, :cond_0

    move p0, v0

    goto :goto_1
.end method

.method public static interpolate(FFF)F
    .locals 1

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static isPowerOf2(I)Z
    .locals 2

    neg-int v1, p0

    and-int/2addr v1, p0

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 11

    add-int/lit8 v0, p0, -0x1

    ushr-int/lit8 v6, v0, 0x10

    or-int v7, v0, v6

    ushr-int/lit8 v8, v7, 0x8

    or-int v9, v7, v8

    ushr-int/lit8 v1, v9, 0x4

    or-int v2, v9, v1

    ushr-int/lit8 v3, v2, 0x2

    or-int v4, v2, v3

    ushr-int/lit8 v5, v4, 0x1

    or-int v10, v4, v5

    add-int/lit8 v10, v10, 0x1

    return v10
.end method

.method public static prevPowerOf2(I)I
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/utilities/MathUtils;->isPowerOf2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/utilities/MathUtils;->nextPowerOf2(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/utilities/MathUtils;->nextPowerOf2(I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method public static scaleToFitTargetSize([III)F
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    array-length v9, p0

    const/4 v10, 0x2

    if-lt v9, v10, :cond_0

    aget v9, p0, v11

    if-lez v9, :cond_0

    aget v9, p0, v12

    if-gtz v9, :cond_1

    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Expected dimensions to have length >= 2 && dimensions[0] > 0 && dimensions[1] > 0"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    int-to-float v0, p1

    aget v9, p0, v11

    int-to-float v1, v9

    div-float v2, v0, v1

    int-to-float v3, p2

    aget v9, p0, v12

    int-to-float v4, v9

    div-float v5, v3, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aget v9, p0, v11

    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-int v7, v9

    aput v7, p0, v11

    aget v9, p0, v12

    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-int v8, v9

    aput v8, p0, v12

    return v6
.end method

.method public static smoothstep(F)F
    .locals 4

    mul-float v0, p0, p0

    const/high16 v3, 0x4000

    mul-float v1, v3, p0

    const/high16 v3, 0x4040

    sub-float v2, v3, v1

    mul-float v3, v0, v2

    return v3
.end method
