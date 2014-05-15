.class public final Lcom/visionobjects/textwidget/b/a;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final a:[F

.field public static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/visionobjects/textwidget/b/a;->a:[F

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/visionobjects/textwidget/b/a;->b:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0x42t
        0x0t 0x0t 0x70t 0x42t
        0x0t 0x0t 0xa0t 0x42t
        0x0t 0x0t 0xc8t 0x42t
        0x0t 0x0t 0xf0t 0x42t
    .end array-data

    :array_1
    .array-data 0x4
        0xfat 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(FLandroid/util/DisplayMetrics;)F
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static a(Landroid/util/DisplayMetrics;)[F
    .locals 4

    sget-object v0, Lcom/visionobjects/textwidget/b/a;->a:[F

    array-length v0, v0

    new-array v1, v0, [F

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/visionobjects/textwidget/b/a;->a:[F

    aget v2, v2, v0

    const/4 v3, 0x1

    invoke-static {v3, v2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
