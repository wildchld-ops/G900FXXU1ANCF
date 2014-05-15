.class public Landroid/view/animation/interpolator/SineInOut80;
.super Ljava/lang/Object;
.source "SineInOut80.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x5

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/animation/interpolator/SineInOut80;->segments:[[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x14t 0xaet 0x47t 0x3et
    .end array-data

    :array_1
    .array-data 0x4
        0x14t 0xaet 0x47t 0x3et
        0x8ft 0xc2t 0xf5t 0x3et
        0xb8t 0x1et 0x25t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0xb8t 0x1et 0x25t 0x3ft
        0x8ft 0xc2t 0x55t 0x3ft
        0x5ct 0x8ft 0x62t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x5ct 0x8ft 0x62t 0x3ft
        0xe1t 0x7at 0x74t 0x3ft
        0x35t 0x5et 0x7at 0x3ft
    .end array-data

    :array_4
    .array-data 0x4
        0x35t 0x5et 0x7at 0x3ft
        0x72t 0xf9t 0x7ft 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 13

    const/4 v12, 0x0

    const/high16 v11, 0x3f80

    div-float v0, p1, v11

    sget-object v6, Landroid/view/animation/interpolator/SineInOut80;->segments:[[F

    array-length v1, v6

    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    sget-object v6, Landroid/view/animation/interpolator/SineInOut80;->segments:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_0

    sget-object v6, Landroid/view/animation/interpolator/SineInOut80;->segments:[[F

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    :cond_0
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v11, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    sget-object v6, Landroid/view/animation/interpolator/SineInOut80;->segments:[[F

    aget-object v3, v6, v4

    const/4 v6, 0x0

    aget v7, v3, v12

    const/high16 v8, 0x4000

    sub-float v9, v11, v2

    mul-float/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v11

    add-float v5, v6, v7

    return v5
.end method
