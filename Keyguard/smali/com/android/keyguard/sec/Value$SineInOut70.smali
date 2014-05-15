.class public Lcom/android/keyguard/sec/Value$SineInOut70;
.super Ljava/lang/Object;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SineInOut70"
.end annotation


# static fields
.field public static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    new-array v0, v3, [[F

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

    sput-object v0, Lcom/android/keyguard/sec/Value$SineInOut70;->segments:[[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xat 0xd7t 0x23t 0x3ct
        0x66t 0x66t 0xe6t 0x3et
    .end array-data

    :array_1
    .array-data 0x4
        0x66t 0x66t 0xe6t 0x3et
        0xcdt 0xcct 0x4ct 0x3ft
        0xb0t 0x72t 0x68t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0xb0t 0x72t 0x68t 0x3ft
        0x72t 0xf9t 0x7ft 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
