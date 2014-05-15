.class public Lcom/android/keyguard/sec/magazine/anim/interpolator/QuintOut80;
.super Ljava/lang/Object;
.source "QuintOut80.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x2

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/keyguard/sec/magazine/anim/interpolator/QuintOut80;->segments:[[F

    return-void

    nop

    :array_0
    .array-data 0x4
        0xat 0xd7t 0x23t 0x3dt
        0xd9t 0xcet 0x37t 0x3ft
        0x3dt 0xat 0x57t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0xect 0x51t 0x58t 0x3ft
        0xeet 0x7ct 0x7ft 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
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

    sget-object v6, Lcom/android/keyguard/sec/magazine/anim/interpolator/QuintOut80;->segments:[[F

    array-length v1, v6

    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    sget-object v6, Lcom/android/keyguard/sec/magazine/anim/interpolator/QuintOut80;->segments:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_0

    sget-object v6, Lcom/android/keyguard/sec/magazine/anim/interpolator/QuintOut80;->segments:[[F

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

    sget-object v6, Lcom/android/keyguard/sec/magazine/anim/interpolator/QuintOut80;->segments:[[F

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
