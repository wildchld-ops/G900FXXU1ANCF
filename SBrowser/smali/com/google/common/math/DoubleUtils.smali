.class final Lcom/google/common/math/DoubleUtils;
.super Ljava/lang/Object;
.source "DoubleUtils.java"


# static fields
.field static final EXPONENT_BIAS:I = 0x3ff

.field static final EXPONENT_MASK:J = 0x7ff0000000000000L

.field static final IMPLICIT_BIT:J = 0x10000000000000L

.field static final MAX_DOUBLE_EXPONENT:I = 0x3ff

.field static final MIN_DOUBLE_EXPONENT:I = -0x3fe

#the value of this static final field might be set in the static constructor
.field private static final ONE_BITS:J = 0x0L

.field static final SIGNIFICAND_BITS:I = 0x34

.field static final SIGNIFICAND_MASK:J = 0xfffffffffffffL

.field static final SIGN_MASK:J = -0x8000000000000000L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x3ff0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleUtils;->ONE_BITS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bigToDouble(Ljava/math/BigInteger;)D
    .locals 16

    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    const/16 v12, 0x3f

    if-ge v3, v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v12

    long-to-double v12, v12

    :goto_0
    return-wide v12

    :cond_0
    const/16 v12, 0x3ff

    if-le v3, v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->signum()I

    move-result v12

    int-to-double v12, v12

    const-wide/high16 v14, 0x7ff0

    mul-double/2addr v12, v14

    goto :goto_0

    :cond_1
    add-int/lit8 v12, v3, -0x34

    add-int/lit8 v5, v12, -0x1

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    const/4 v12, 0x1

    shr-long v6, v10, v12

    const-wide v12, 0xfffffffffffffL

    and-long/2addr v6, v12

    const-wide/16 v12, 0x1

    and-long/2addr v12, v10

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    const-wide/16 v12, 0x1

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    invoke-virtual {v0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v12

    if-ge v12, v5, :cond_3

    :cond_2
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_4

    const-wide/16 v12, 0x1

    add-long v8, v6, v12

    :goto_2
    add-int/lit16 v12, v3, 0x3ff

    int-to-long v12, v12

    const/16 v14, 0x34

    shl-long v1, v12, v14

    add-long/2addr v1, v8

    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->signum()I

    move-result v12

    int-to-long v12, v12

    const-wide/high16 v14, -0x8000

    and-long/2addr v12, v14

    or-long/2addr v1, v12

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    move-wide v8, v6

    goto :goto_2
.end method

.method static getExponent(D)I
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v3, 0x7ff0

    and-long/2addr v3, v0

    const/16 v5, 0x34

    shr-long/2addr v3, v5

    long-to-int v2, v3

    add-int/lit16 v2, v2, -0x3ff

    return v2
.end method

.method static getSignificand(D)J
    .locals 5

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v3

    const-string v4, "not a normal value"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getExponent(D)I

    move-result v2

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide v3, 0xfffffffffffffL

    and-long/2addr v0, v3

    const/16 v3, -0x3ff

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    shl-long v3, v0, v3

    :goto_0
    return-wide v3

    :cond_0
    const-wide/high16 v3, 0x10

    or-long/2addr v3, v0

    goto :goto_0
.end method

.method static isFinite(D)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getExponent(D)I

    move-result v0

    const/16 v1, 0x3ff

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isNormal(D)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getExponent(D)I

    move-result v0

    const/16 v1, -0x3fe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static next(DZ)D
    .locals 7

    const-wide/16 v5, 0x1

    const-wide/16 v3, 0x0

    cmpl-double v2, p0, v3

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x1

    :goto_0
    return-wide v2

    :cond_0
    const-wide v2, -0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    cmpg-double v2, p0, v3

    if-gez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-ne v2, p2, :cond_3

    sub-long/2addr v0, v5

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    add-long/2addr v0, v5

    goto :goto_2
.end method

.method static strictfp scalb(DI)D
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/high16 v8, 0x4000

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getExponent(D)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    add-int v3, v2, p2

    const/16 v6, -0x3fe

    if-gt v6, v3, :cond_0

    move v6, v4

    :goto_0
    const/16 v7, 0x3ff

    if-gt v3, v7, :cond_1

    :goto_1
    and-int/2addr v4, v6

    if-eqz v4, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide v4, -0x7ff0000000000001L

    and-long/2addr v0, v4

    add-int/lit16 v4, v3, 0x3ff

    int-to-long v4, v4

    const/16 v6, 0x34

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    :goto_2
    :sswitch_0
    return-wide p0

    :sswitch_1
    int-to-double v4, p2

    invoke-static {v8, v9, v4, v5}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v4

    mul-double/2addr p0, v4

    goto :goto_2

    :cond_0
    move v6, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    int-to-double v4, p2

    invoke-static {v8, v9, v4, v5}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v4

    mul-double/2addr p0, v4

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3ff -> :sswitch_1
        0x400 -> :sswitch_0
    .end sparse-switch
.end method

.method static scaleNormalize(D)D
    .locals 6

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    const-wide v4, 0xfffffffffffffL

    and-long v0, v2, v4

    sget-wide v2, Lcom/google/common/math/DoubleUtils;->ONE_BITS:J

    or-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method
