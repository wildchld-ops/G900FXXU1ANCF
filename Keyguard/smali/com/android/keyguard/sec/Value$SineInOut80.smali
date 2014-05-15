.class public Lcom/android/keyguard/sec/Value$SineInOut80;
.super Ljava/lang/Object;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SineInOut80"
.end annotation


# static fields
.field public static final segments:[[F


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

    sput-object v0, Lcom/android/keyguard/sec/Value$SineInOut80;->segments:[[F

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
