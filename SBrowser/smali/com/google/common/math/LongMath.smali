.class public final Lcom/google/common/math/LongMath;
.super Ljava/lang/Object;
.source "LongMath.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/LongMath$1;
    }
.end annotation


# static fields
.field static final BIGGEST_BINOMIALS:[I = null

.field static final BIGGEST_SIMPLE_BINOMIALS:[I = null
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FACTORIALS:[J = null

.field static final FLOOR_SQRT_MAX_LONG:J = 0xb504f333L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final HALF_POWERS_OF_10:[J = null
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:J = -0x4afb0ccc06219b7cL
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final POWERS_OF_10:[J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x13

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    new-array v0, v1, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/math/LongMath;->HALF_POWERS_OF_10:[J

    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/LongMath;->FACTORIALS:[J

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/LongMath;->BIGGEST_BINOMIALS:[I

    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/LongMath;->BIGGEST_SIMPLE_BINOMIALS:[I

    return-void

    :array_0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x86t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x42t 0xft 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x96t 0x98t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe1t 0xf5t 0x5t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xcat 0x9at 0x3bt 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe4t 0xbt 0x54t 0x2t 0x0t 0x0t 0x0t
        0x0t 0xe8t 0x76t 0x48t 0x17t 0x0t 0x0t 0x0t
        0x0t 0x10t 0xa5t 0xd4t 0xe8t 0x0t 0x0t 0x0t
        0x0t 0xa0t 0x72t 0x4et 0x18t 0x9t 0x0t 0x0t
        0x0t 0x40t 0x7at 0x10t 0xf3t 0x5at 0x0t 0x0t
        0x0t 0x80t 0xc6t 0xa4t 0x7et 0x8dt 0x3t 0x0t
        0x0t 0x0t 0xc1t 0x6ft 0xf2t 0x86t 0x23t 0x0t
        0x0t 0x0t 0x8at 0x5dt 0x78t 0x45t 0x63t 0x1t
        0x0t 0x0t 0x64t 0xa7t 0xb3t 0xb6t 0xe0t 0xdt
    .end array-data

    :array_1
    .array-data 0x8
        0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x3ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x5at 0xct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x86t 0x7bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x43t 0xd3t 0x4t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa5t 0x40t 0x30t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x78t 0x86t 0xe2t 0x1t 0x0t 0x0t 0x0t 0x0t
        0xb6t 0x40t 0xd9t 0x12t 0x0t 0x0t 0x0t 0x0t
        0x1ct 0x87t 0x7ct 0xbct 0x0t 0x0t 0x0t 0x0t
        0x19t 0x47t 0xddt 0x5ct 0x7t 0x0t 0x0t 0x0t
        0x0t 0xc7t 0xa4t 0xa0t 0x49t 0x0t 0x0t 0x0t
        0x8t 0xc6t 0x6ft 0x46t 0xe0t 0x2t 0x0t 0x0t
        0x53t 0xbct 0x5dt 0xc0t 0xc2t 0x1ct 0x0t 0x0t
        0x45t 0x5bt 0xa9t 0x83t 0x9bt 0x1ft 0x1t 0x0t
        0xbbt 0x90t 0x9dt 0x24t 0x13t 0x3ct 0xbt 0x0t
        0x51t 0xa7t 0x27t 0x6et 0xbft 0x58t 0x70t 0x0t
        0x2dt 0x89t 0x8ct 0x4dt 0x7at 0x77t 0x63t 0x4t
        0xc3t 0x5bt 0x7dt 0x7t 0xc7t 0xaat 0xe2t 0x2bt
    .end array-data

    :array_2
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x13t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x9dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x89t 0x5t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x5ft 0x37t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x15t 0x61t 0x2t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xfct 0x8ct 0x1ct 0x0t 0x0t 0x0t 0x0t
        0x0t 0xcct 0x28t 0x73t 0x1t 0x0t 0x0t 0x0t
        0x0t 0x28t 0x3bt 0x4ct 0x14t 0x0t 0x0t 0x0t
        0x0t 0x58t 0x77t 0x77t 0x30t 0x1t 0x0t 0x0t
        0x0t 0x80t 0x75t 0x77t 0x7t 0x13t 0x0t 0x0t
        0x0t 0x80t 0xcdt 0xeet 0x7et 0x43t 0x1t 0x0t
        0x0t 0x0t 0x73t 0xcat 0xect 0xbet 0x16t 0x0t
        0x0t 0x0t 0x89t 0x6t 0x93t 0x2bt 0xb0t 0x1t
        0x0t 0x0t 0xb4t 0x82t 0x7ct 0x67t 0xc3t 0x21t
    .end array-data

    :array_3
    .array-data 0x4
        0xfft 0xfft 0xfft 0x7ft
        0xfft 0xfft 0xfft 0x7ft
        0xfft 0xfft 0xfft 0x7ft
        0xdbt 0x25t 0x3at 0x0t
        0x79t 0xdct 0x1t 0x0t
        0x2ft 0x3ft 0x0t 0x0t
        0xf1t 0x10t 0x0t 0x0t
        0xc5t 0x6t 0x0t 0x0t
        0x77t 0x3t 0x0t 0x0t
        0x16t 0x2t 0x0t 0x0t
        0x69t 0x1t 0x0t 0x0t
        0x9t 0x1t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0xfft 0xfft 0xfft 0x7ft
        0xfft 0xfft 0xfft 0x7ft
        0xfft 0xfft 0xfft 0x7ft
        0x46t 0x51t 0x28t 0x0t
        0xebt 0x50t 0x1t 0x0t
        0xcct 0x2dt 0x0t 0x0t
        0x92t 0xct 0x0t 0x0t
        0x21t 0x5t 0x0t 0x0t
        0xact 0x2t 0x0t 0x0t
        0xa3t 0x1t 0x0t 0x0t
        0x1ft 0x1t 0x0t 0x0t
        0xd6t 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)J
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "n"

    invoke-static {v4, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-string v4, "k"

    invoke-static {v4, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    if-gt p1, p0, :cond_3

    move v4, v5

    :goto_0
    const-string v7, "k (%s) > n (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {v4, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    shr-int/lit8 v4, p0, 0x1

    if-le p1, v4, :cond_0

    sub-int p1, p0, p1

    :cond_0
    sget-object v4, Lcom/google/common/math/LongMath;->BIGGEST_BINOMIALS:[I

    array-length v4, v4

    if-ge p1, v4, :cond_1

    sget-object v4, Lcom/google/common/math/LongMath;->BIGGEST_BINOMIALS:[I

    aget v4, v4, p1

    if-le p0, v4, :cond_4

    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    :cond_2
    return-wide v2

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0x1

    sget-object v4, Lcom/google/common/math/LongMath;->BIGGEST_SIMPLE_BINOMIALS:[I

    array-length v4, v4

    if-ge p1, v4, :cond_5

    sget-object v4, Lcom/google/common/math/LongMath;->BIGGEST_SIMPLE_BINOMIALS:[I

    aget v4, v4, p1

    if-gt p0, v4, :cond_5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    sub-int v4, p0, v1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x1

    int-to-long v4, v4

    div-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    :goto_2
    if-gt v1, p1, :cond_2

    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->gcd(II)I

    move-result v0

    div-int v4, v1, v0

    int-to-long v4, v4

    div-long/2addr v2, v4

    div-int v4, p0, v0

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_2
.end method

.method public static checkedAdd(JJ)J
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    add-long v0, p0, p2

    xor-long v4, p0, p2

    cmp-long v4, v4, v7

    if-gez v4, :cond_0

    move v4, v2

    :goto_0
    xor-long v5, p0, v0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    :goto_1
    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    return-wide v0

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static checkedMultiply(JJ)J
    .locals 12

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    xor-long v6, p0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int/2addr v3, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int/2addr v3, v6

    xor-long v6, p2, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int v0, v3, v6

    const/16 v3, 0x41

    if-le v0, v3, :cond_0

    mul-long v1, p0, p2

    :goto_0
    return-wide v1

    :cond_0
    const/16 v3, 0x40

    if-lt v0, v3, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    cmp-long v3, p0, v10

    if-ltz v3, :cond_4

    move v6, v4

    :goto_2
    const-wide/high16 v7, -0x8000

    cmp-long v3, p2, v7

    if-eqz v3, :cond_5

    move v3, v4

    :goto_3
    or-int/2addr v3, v6

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    mul-long v1, p0, p2

    cmp-long v3, p0, v10

    if-eqz v3, :cond_1

    div-long v6, v1, p0

    cmp-long v3, v6, p2

    if-nez v3, :cond_2

    :cond_1
    move v5, v4

    :cond_2
    invoke-static {v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    move v6, v5

    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3
.end method

.method public static checkedPow(JI)J
    .locals 12

    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "exponent"

    invoke-static {v8, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-wide/16 v8, -0x2

    cmp-long v8, p0, v8

    if-ltz v8, :cond_3

    move v9, v6

    :goto_0
    const-wide/16 v10, 0x2

    cmp-long v8, p0, v10

    if-gtz v8, :cond_4

    move v8, v6

    :goto_1
    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    long-to-int v8, p0

    packed-switch v8, :pswitch_data_0

    :cond_0
    const-wide/16 v0, 0x1

    :cond_1
    :goto_2
    packed-switch p2, :pswitch_data_1

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v0

    :cond_2
    shr-int/lit8 p2, p2, 0x1

    if-lez p2, :cond_1

    const-wide v2, 0xb504f333L

    cmp-long v2, p0, v2

    if-gtz v2, :cond_a

    move v2, v6

    :goto_3
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    mul-long/2addr p0, p0

    goto :goto_2

    :cond_3
    move v9, v7

    goto :goto_0

    :cond_4
    move v8, v7

    goto :goto_1

    :pswitch_0
    if-nez p2, :cond_6

    :cond_5
    :goto_4
    :pswitch_1
    return-wide v2

    :cond_6
    const-wide/16 v2, 0x0

    goto :goto_4

    :pswitch_2
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_5

    move-wide v2, v4

    goto :goto_4

    :pswitch_3
    const/16 v4, 0x3f

    if-ge p2, v4, :cond_7

    move v4, v6

    :goto_5
    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    shl-long/2addr v2, p2

    goto :goto_4

    :cond_7
    move v4, v7

    goto :goto_5

    :pswitch_4
    const/16 v8, 0x40

    if-ge p2, v8, :cond_8

    :goto_6
    invoke-static {v6}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_9

    shl-long/2addr v2, p2

    goto :goto_4

    :cond_8
    move v6, v7

    goto :goto_6

    :cond_9
    shl-long v2, v4, p2

    goto :goto_4

    :pswitch_5
    move-wide v2, v0

    goto :goto_4

    :pswitch_6
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v2

    goto :goto_4

    :cond_a
    move v2, v7

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static checkedSubtract(JJ)J
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    sub-long v0, p0, p2

    xor-long v4, p0, p2

    cmp-long v4, v4, v7

    if-ltz v4, :cond_0

    move v4, v2

    :goto_0
    xor-long v5, p0, v0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    :goto_1
    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    return-wide v0

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .locals 18

    invoke-static/range {p4 .. p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    div-long v5, p0, p2

    mul-long v11, p2, v5

    sub-long v8, p0, v11

    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-wide v5

    :cond_1
    xor-long v11, p0, p2

    const/16 v13, 0x3f

    shr-long/2addr v11, v13

    long-to-int v11, v11

    or-int/lit8 v10, v11, 0x1

    sget-object v11, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p4 .. p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    :pswitch_0
    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-nez v11, :cond_2

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_1
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_0

    int-to-long v11, v10

    add-long/2addr v5, v11

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    :pswitch_2
    const/4 v7, 0x1

    goto :goto_2

    :pswitch_3
    if-lez v10, :cond_3

    const/4 v7, 0x1

    :goto_3
    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :pswitch_4
    if-gez v10, :cond_4

    const/4 v7, 0x1

    :goto_4
    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :pswitch_5
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    sub-long/2addr v11, v1

    sub-long v3, v1, v11

    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_8

    sget-object v11, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_5

    const/4 v11, 0x1

    :goto_5
    sget-object v12, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_6

    const/4 v12, 0x1

    move v13, v12

    :goto_6
    const-wide/16 v14, 0x1

    and-long/2addr v14, v5

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    :goto_7
    and-int/2addr v12, v13

    or-int v7, v11, v12

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    move v13, v12

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    goto :goto_7

    :cond_8
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-lez v11, :cond_9

    const/4 v7, 0x1

    :goto_8
    goto :goto_2

    :cond_9
    const/4 v7, 0x0

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static factorial(I)J
    .locals 2

    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    sget-object v0, Lcom/google/common/math/LongMath;->FACTORIALS:[J

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/math/LongMath;->FACTORIALS:[J

    aget-wide v0, v0, p0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method static fitsInInt(J)Z
    .locals 2

    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static gcd(JJ)J
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "a"

    invoke-static {v6, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    const-string v6, "b"

    invoke-static {v6, p2, p3}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    cmp-long v6, p0, v7

    if-nez v6, :cond_0

    move v6, v4

    :goto_0
    cmp-long v7, p2, v7

    if-nez v7, :cond_1

    :goto_1
    or-int/2addr v4, v6

    if-eqz v4, :cond_2

    or-long v4, p0, p2

    :goto_2
    return-wide v4

    :cond_0
    move v6, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    shr-long/2addr p0, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    shr-long/2addr p2, v1

    :goto_3
    cmp-long v4, p0, p2

    if-eqz v4, :cond_4

    cmp-long v4, p0, p2

    if-gez v4, :cond_3

    move-wide v2, p2

    move-wide p2, p0

    move-wide p0, v2

    :cond_3
    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    shr-long/2addr p0, v4

    goto :goto_3

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    shl-long v4, p0, v4

    goto :goto_2
.end method

.method public static isPowerOfTwo(J)Z
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmp-long v2, p0, v5

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    const-wide/16 v3, 0x1

    sub-long v3, p0, v3

    and-long/2addr v3, p0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static log10(JLjava/math/RoundingMode;)I
    .locals 5

    const-string v3, "x"

    invoke-static {v3, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v3

    if-eqz v3, :cond_1

    long-to-int v3, p0

    invoke-static {v3, p2}, Lcom/google/common/math/IntMath;->log10(ILjava/math/RoundingMode;)I

    move-result v2

    :cond_0
    :goto_0
    :pswitch_0
    return v2

    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->log10Floor(J)I

    move-result v2

    sget-object v3, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    aget-wide v0, v3, v2

    sget-object v3, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :pswitch_1
    cmp-long v3, p0, v0

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :pswitch_2
    cmp-long v3, p0, v0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/google/common/math/LongMath;->HALF_POWERS_OF_10:[J

    aget-wide v3, v3, v2

    cmp-long v3, p0, v3

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static log10Floor(J)I
    .locals 3

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    aget-wide v1, v1, v0

    cmp-long v1, p0, v1

    if-gez v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static log2(JLjava/math/RoundingMode;)I
    .locals 6

    const-string v4, "x"

    invoke-static {v4, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    sget-object v4, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "impossible"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    rsub-int/lit8 v3, v4, 0x3f

    :cond_0
    :goto_0
    return v3

    :pswitch_2
    const-wide/16 v4, 0x1

    sub-long v4, p0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    rsub-int/lit8 v3, v4, 0x40

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    const-wide v4, -0x4afb0ccc06219b7cL

    ushr-long v0, v4, v2

    rsub-int/lit8 v3, v2, 0x3f

    cmp-long v4, p0, v0

    if-lez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static mod(JI)I
    .locals 2

    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->mod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static mod(JJ)J
    .locals 5

    const-wide/16 v3, 0x0

    cmp-long v2, p2, v3

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Modulus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be > 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    rem-long v0, p0, p2

    cmp-long v2, v0, v3

    if-ltz v2, :cond_1

    :goto_0
    return-wide v0

    :cond_1
    add-long/2addr v0, p2

    goto :goto_0
.end method

.method public static pow(JI)J
    .locals 9

    const/16 v8, 0x40

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x1

    const-string v6, "exponent"

    invoke-static {v6, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-wide/16 v6, -0x2

    cmp-long v6, v6, p0

    if-gtz v6, :cond_0

    const-wide/16 v6, 0x2

    cmp-long v6, p0, v6

    if-gtz v6, :cond_0

    long-to-int v6, p0

    packed-switch v6, :pswitch_data_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    packed-switch p2, :pswitch_data_1

    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_6

    move-wide v4, v2

    :goto_1
    mul-long/2addr v0, v4

    mul-long/2addr p0, p0

    shr-int/lit8 p2, p2, 0x1

    goto :goto_0

    :pswitch_0
    if-nez p2, :cond_2

    :cond_1
    :goto_2
    :pswitch_1
    return-wide v2

    :cond_2
    move-wide v2, v4

    goto :goto_2

    :pswitch_2
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_1

    const-wide/16 v2, -0x1

    goto :goto_2

    :pswitch_3
    if-ge p2, v8, :cond_3

    shl-long v4, v2, p2

    :cond_3
    move-wide v2, v4

    goto :goto_2

    :pswitch_4
    if-ge p2, v8, :cond_5

    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_4

    shl-long/2addr v2, p2

    goto :goto_2

    :cond_4
    shl-long/2addr v2, p2

    neg-long v2, v2

    goto :goto_2

    :cond_5
    move-wide v2, v4

    goto :goto_2

    :pswitch_5
    move-wide v2, v0

    goto :goto_2

    :pswitch_6
    mul-long v2, v0, p0

    goto :goto_2

    :cond_6
    move-wide v4, p0

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static sqrt(JLjava/math/RoundingMode;)J
    .locals 11

    const-wide/16 v9, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "x"

    invoke-static {v6, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v6

    if-eqz v6, :cond_1

    long-to-int v4, p0

    invoke-static {v4, p2}, Lcom/google/common/math/IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result v4

    int-to-long v2, v4

    :cond_0
    :goto_0
    :pswitch_0
    return-wide v2

    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->sqrtFloor(J)J

    move-result-wide v2

    sget-object v6, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :pswitch_1
    mul-long v6, v2, v2

    cmp-long v6, v6, p0

    if-nez v6, :cond_2

    :goto_1
    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :pswitch_2
    mul-long v4, v2, v2

    cmp-long v4, v4, p0

    if-eqz v4, :cond_0

    add-long/2addr v2, v9

    goto :goto_0

    :pswitch_3
    mul-long v6, v2, v2

    add-long v0, v6, v2

    cmp-long v6, v0, p0

    if-ltz v6, :cond_3

    move v6, v4

    :goto_2
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-gez v7, :cond_4

    :goto_3
    or-int/2addr v4, v6

    if-nez v4, :cond_0

    add-long/2addr v2, v9

    goto :goto_0

    :cond_3
    move v6, v5

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static sqrtFloor(J)J
    .locals 9

    const/4 v8, 0x1

    long-to-double v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-long v0, v6

    div-long v6, p0, v0

    add-long/2addr v6, v0

    shr-long v4, v6, v8

    cmp-long v6, v4, v0

    if-nez v6, :cond_0

    move-wide v2, v0

    :goto_0
    return-wide v2

    :cond_0
    move-wide v0, v4

    div-long v6, p0, v0

    add-long/2addr v6, v0

    shr-long v4, v6, v8

    cmp-long v6, v4, v0

    if-ltz v6, :cond_0

    move-wide v2, v0

    goto :goto_0
.end method
