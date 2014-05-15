.class public Lcom/sec/android/app/sbrowser/decoder/MutableDouble;
.super Ljava/lang/Number;
.source "MutableDouble.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/sec/android/app/sbrowser/decoder/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sec/android/app/sbrowser/decoder/MutableDouble;",
        ">;",
        "Lcom/sec/android/app/sbrowser/decoder/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5e9a330cL


# instance fields
.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    return-void
.end method

.method public compareTo(Lcom/sec/android/app/sbrowser/decoder/MutableDouble;)I
    .locals 4

    iget-wide v0, p1, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->compareTo(Lcom/sec/android/app/sbrowser/decoder/MutableDouble;)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    return-void
.end method

.method public doubleValue()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;

    iget-wide v0, p1, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->getValue()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public increment()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    return-void
.end method

.method public intValue()I
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public setValue(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(D)V
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    return-void
.end method

.method public toDouble()Ljava/lang/Double;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
