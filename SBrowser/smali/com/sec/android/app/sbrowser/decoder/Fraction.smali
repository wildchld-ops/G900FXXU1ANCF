.class public final Lcom/sec/android/app/sbrowser/decoder/Fraction;
.super Ljava/lang/Number;
.source "Fraction.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sec/android/app/sbrowser/decoder/Fraction;",
        ">;"
    }
.end annotation


# static fields
.field public static final FOUR_FIFTHS:Lcom/sec/android/app/sbrowser/decoder/Fraction; = null

.field public static final ONE:Lcom/sec/android/app/sbrowser/decoder/Fraction; = null

.field public static final ONE_FIFTH:Lcom/sec/android/app/sbrowser/decoder/Fraction; = null

.field public static final ONE_HALF:Lcom/sec/android/app/sbrowser/decoder/Fraction; = null

.field public static final ONE_QUARTER:Lcom/sec/android/app/sbrowser/decoder/Fraction; = null

.field public static final ONE_THIRD:Lcom/sec/android/app/sbrowser/decoder/Fraction; = null

.field public static final THREE_FIFTHS:Lcom/sec/android/app/sbrowser/decoder/Fraction; = null

.field public static final THREE_QUARTERS:Lcom/sec/android/app/sbrowser/decoder/Fraction; = null

.field public static final TWO_FIFTHS:Lcom/sec/android/app/sbrowser/decoder/Fraction; = null

.field public static final TWO_QUARTERS:Lcom/sec/android/app/sbrowser/decoder/Fraction; = null

.field public static final TWO_THIRDS:Lcom/sec/android/app/sbrowser/decoder/Fraction; = null

.field public static final ZERO:Lcom/sec/android/app/sbrowser/decoder/Fraction; = null

.field private static final serialVersionUID:J = 0x3b76f0847842L


# instance fields
.field private final denominator:I

.field private transient hashCode:I

.field private final numerator:I

.field private transient toProperString:Ljava/lang/String;

.field private transient toString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->ZERO:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-direct {v0, v2, v2}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->ONE:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->ONE_HALF:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-direct {v0, v2, v4}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->ONE_THIRD:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-direct {v0, v3, v4}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->TWO_THIRDS:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-direct {v0, v2, v5}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->ONE_QUARTER:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-direct {v0, v3, v5}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->TWO_QUARTERS:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-direct {v0, v4, v5}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->THREE_QUARTERS:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-direct {v0, v2, v6}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->ONE_FIFTH:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-direct {v0, v3, v6}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->TWO_FIFTHS:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-direct {v0, v4, v6}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->THREE_FIFTHS:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-direct {v0, v5, v6}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->FOUR_FIFTHS:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->hashCode:I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->toString:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->toProperString:Ljava/lang/String;

    iput p1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    return-void
.end method

.method private static addAndCheck(II)I
    .locals 6

    int-to-long v2, p0

    int-to-long v4, p1

    add-long v0, v2, v4

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "overflow: add"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    long-to-int v2, v0

    return v2
.end method

.method private addSub(Lcom/sec/android/app/sbrowser/decoder/Fraction;Z)Lcom/sec/android/app/sbrowser/decoder/Fraction;
    .locals 11

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "The fraction must not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    iget v7, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    if-nez v7, :cond_2

    if-eqz p2, :cond_1

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->negate()Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget v7, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    if-nez v7, :cond_3

    move-object p1, p0

    goto :goto_0

    :cond_3
    iget v7, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    iget v8, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    invoke-static {v7, v8}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    iget v7, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    iget v8, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    invoke-static {v7, v8}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->mulAndCheck(II)I

    move-result v5

    iget v7, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    invoke-static {v7, v8}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->mulAndCheck(II)I

    move-result v4

    new-instance v8, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    if-eqz p2, :cond_4

    invoke-static {v5, v4}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->addAndCheck(II)I

    move-result v7

    :goto_1
    iget v9, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    iget v10, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    invoke-static {v9, v10}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->mulPosAndCheck(II)I

    move-result v9

    invoke-direct {v8, v7, v9}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    move-object p1, v8

    goto :goto_0

    :cond_4
    invoke-static {v5, v4}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->subAndCheck(II)I

    move-result v7

    goto :goto_1

    :cond_5
    iget v7, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iget v8, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    div-int/2addr v8, v0

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    iget v7, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    div-int/2addr v8, v0

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    if-eqz p2, :cond_6

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :goto_2
    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    if-nez v3, :cond_7

    move v1, v0

    :goto_3
    int-to-long v7, v1

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x1f

    if-le v7, v8, :cond_8

    new-instance v7, Ljava/lang/ArithmeticException;

    const-string v8, "overflow: numerator too large after multiply"

    invoke-direct {v7, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_2

    :cond_7
    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->greatestCommonDivisor(II)I

    move-result v1

    goto :goto_3

    :cond_8
    new-instance v7, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    div-int/2addr v9, v0

    iget v10, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    div-int/2addr v10, v1

    invoke-static {v9, v10}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->mulPosAndCheck(II)I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    move-object p1, v7

    goto/16 :goto_0
.end method

.method public static getFraction(D)Lcom/sec/android/app/sbrowser/decoder/Fraction;
    .locals 31

    const-wide/16 v27, 0x0

    cmpg-double v27, p0, v27

    if-gez v27, :cond_1

    const/16 v17, -0x1

    :goto_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v27, 0x41dfffffffc00000L

    cmpl-double v27, p0, v27

    if-gtz v27, :cond_0

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v27

    if-eqz v27, :cond_2

    :cond_0
    new-instance v27, Ljava/lang/ArithmeticException;

    const-string v28, "The value must not be greater than Integer.MAX_VALUE or NaN"

    invoke-direct/range {v27 .. v28}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_1
    const/16 v17, 0x1

    goto :goto_0

    :cond_2
    move-wide/from16 v0, p0

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v27, v0

    sub-double p0, p0, v27

    const/4 v14, 0x0

    const/4 v8, 0x1

    const/4 v15, 0x1

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    move-wide/from16 v0, p0

    double-to-int v2, v0

    const/4 v3, 0x0

    const-wide/high16 v19, 0x3ff0

    const-wide/16 v21, 0x0

    int-to-double v0, v2

    move-wide/from16 v27, v0

    sub-double v23, p0, v27

    const-wide/16 v25, 0x0

    const-wide v6, 0x7fefffffffffffffL

    const/4 v13, 0x1

    :cond_3
    move-wide v4, v6

    div-double v27, v19, v23

    move-wide/from16 v0, v27

    double-to-int v3, v0

    move-wide/from16 v21, v23

    int-to-double v0, v3

    move-wide/from16 v27, v0

    mul-double v27, v27, v23

    sub-double v25, v19, v27

    mul-int v27, v2, v15

    add-int v16, v27, v14

    mul-int v27, v2, v9

    add-int v10, v27, v8

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v27, v0

    int-to-double v0, v10

    move-wide/from16 v29, v0

    div-double v11, v27, v29

    sub-double v27, p0, v11

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move v2, v3

    move-wide/from16 v19, v21

    move-wide/from16 v23, v25

    move v14, v15

    move v8, v9

    move/from16 v15, v16

    move v9, v10

    add-int/lit8 v13, v13, 0x1

    cmpl-double v27, v4, v6

    if-lez v27, :cond_4

    const/16 v27, 0x2710

    move/from16 v0, v27

    if-gt v10, v0, :cond_4

    if-lez v10, :cond_4

    const/16 v27, 0x19

    move/from16 v0, v27

    if-lt v13, v0, :cond_3

    :cond_4
    const/16 v27, 0x19

    move/from16 v0, v27

    if-ne v13, v0, :cond_5

    new-instance v27, Ljava/lang/ArithmeticException;

    const-string v28, "Unable to convert double to fraction"

    invoke-direct/range {v27 .. v28}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_5
    mul-int v27, v18, v8

    add-int v27, v27, v14

    mul-int v27, v27, v17

    move/from16 v0, v27

    invoke-static {v0, v8}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getReducedFraction(II)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object v27

    return-object v27
.end method

.method public static getFraction(II)Lcom/sec/android/app/sbrowser/decoder/Fraction;
    .locals 2

    const/high16 v0, -0x8000

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_3

    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: can\'t negate"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    neg-int p0, p0

    neg-int p1, p1

    :cond_3
    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    return-object v0
.end method

.method public static getFraction(III)Lcom/sec/android/app/sbrowser/decoder/Fraction;
    .locals 6

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "The denominator must not be zero"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-gez p2, :cond_1

    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "The denominator must not be negative"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-gez p1, :cond_2

    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "The numerator must not be negative"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-gez p0, :cond_4

    int-to-long v2, p0

    int-to-long v4, p2

    mul-long/2addr v2, v4

    int-to-long v4, p1

    sub-long v0, v2, v4

    :goto_0
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    :cond_3
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Numerator too large to represent as an Integer."

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    int-to-long v2, p0

    int-to-long v4, p2

    mul-long/2addr v2, v4

    int-to-long v4, p1

    add-long v0, v2, v4

    goto :goto_0

    :cond_5
    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    long-to-int v3, v0

    invoke-direct {v2, v3, p2}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    return-object v2
.end method

.method public static getFraction(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/Fraction;
    .locals 7

    const/16 v6, 0x2f

    const/4 v5, 0x0

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The string must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getFraction(D)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_1
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    new-instance v4, Ljava/lang/NumberFormatException;

    const-string v5, "The fraction could not be parsed as the format X Y/Z"

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v1, v0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getFraction(III)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getFraction(II)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object v4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getFraction(II)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object v4

    goto :goto_0
.end method

.method public static getReducedFraction(II)Lcom/sec/android/app/sbrowser/decoder/Fraction;
    .locals 3

    const/high16 v2, -0x8000

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "The denominator must not be zero"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p0, :cond_1

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->ZERO:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    :goto_0
    return-object v1

    :cond_1
    if-ne p1, v2, :cond_2

    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_2

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    :cond_2
    if-gez p1, :cond_5

    if-eq p0, v2, :cond_3

    if-ne p1, v2, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "overflow: can\'t negate"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    neg-int p0, p0

    neg-int p1, p1

    :cond_5
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    div-int/2addr p0, v0

    div-int/2addr p1, v0

    new-instance v1, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    goto :goto_0
.end method

.method private static greatestCommonDivisor(II)I
    .locals 5

    const/16 v4, 0x1f

    const/high16 v3, -0x8000

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_4

    :cond_0
    if-eq p0, v3, :cond_1

    if-ne p1, v3, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "overflow: gcd is 2^31"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    :goto_0
    return v2

    :cond_4
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-eq v3, v2, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-eq v3, v2, :cond_3

    if-lez p0, :cond_5

    neg-int p0, p0

    :cond_5
    if-lez p1, :cond_6

    neg-int p1, p1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    and-int/lit8 v3, p0, 0x1

    if-nez v3, :cond_7

    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_7

    if-ge v0, v4, :cond_7

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    if-ne v0, v4, :cond_8

    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "overflow: gcd is 2^31"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    and-int/lit8 v3, p0, 0x1

    if-ne v3, v2, :cond_a

    move v1, p1

    :cond_9
    :goto_2
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_b

    div-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_a
    div-int/lit8 v3, p0, 0x2

    neg-int v1, v3

    goto :goto_2

    :cond_b
    if-lez v1, :cond_c

    neg-int p0, v1

    :goto_3
    sub-int v3, p1, p0

    div-int/lit8 v1, v3, 0x2

    if-nez v1, :cond_9

    neg-int v3, p0

    shl-int/2addr v2, v0

    mul-int/2addr v2, v3

    goto :goto_0

    :cond_c
    move p1, v1

    goto :goto_3
.end method

.method private static mulAndCheck(II)I
    .locals 6

    int-to-long v2, p0

    int-to-long v4, p1

    mul-long v0, v2, v4

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "overflow: mul"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    long-to-int v2, v0

    return v2
.end method

.method private static mulPosAndCheck(II)I
    .locals 6

    int-to-long v2, p0

    int-to-long v4, p1

    mul-long v0, v2, v4

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "overflow: mulPos"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method private static subAndCheck(II)I
    .locals 6

    int-to-long v2, p0

    int-to-long v4, p1

    sub-long v0, v2, v4

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "overflow: add"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    long-to-int v2, v0

    return v2
.end method


# virtual methods
.method public abs()Lcom/sec/android/app/sbrowser/decoder/Fraction;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    if-ltz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->negate()Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object p0

    goto :goto_0
.end method

.method public add(Lcom/sec/android/app/sbrowser/decoder/Fraction;)Lcom/sec/android/app/sbrowser/decoder/Fraction;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->addSub(Lcom/sec/android/app/sbrowser/decoder/Fraction;Z)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/sec/android/app/sbrowser/decoder/Fraction;)I
    .locals 9

    const/4 v4, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget v5, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    iget v6, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    iget v6, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    if-eq v5, v6, :cond_0

    :cond_2
    iget v5, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    int-to-long v5, v5

    iget v7, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    int-to-long v7, v7

    mul-long v0, v5, v7

    iget v5, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    int-to-long v5, v5

    iget v7, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    int-to-long v7, v7

    mul-long v2, v5, v7

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    const/4 v4, -0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->compareTo(Lcom/sec/android/app/sbrowser/decoder/Fraction;)I

    move-result v0

    return v0
.end method

.method public divideBy(Lcom/sec/android/app/sbrowser/decoder/Fraction;)Lcom/sec/android/app/sbrowser/decoder/Fraction;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The fraction must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The fraction to divide by must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->invert()Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->multiplyBy(Lcom/sec/android/app/sbrowser/decoder/Fraction;)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    int-to-double v0, v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getNumerator()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getNumerator()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getDenominator()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getDenominator()I

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getDenominator()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    return v0
.end method

.method public getNumerator()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    return v0
.end method

.method public getProperNumerator()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getProperWhole()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->hashCode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getNumerator()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getDenominator()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->hashCode:I

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->hashCode:I

    return v0
.end method

.method public intValue()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invert()Lcom/sec/android/app/sbrowser/decoder/Fraction;
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Unable to invert zero."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: can\'t negate numerator"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    if-gez v0, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    neg-int v1, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    neg-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    goto :goto_0
.end method

.method public longValue()J
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    int-to-long v0, v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public multiplyBy(Lcom/sec/android/app/sbrowser/decoder/Fraction;)Lcom/sec/android/app/sbrowser/decoder/Fraction;
    .locals 5

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The fraction must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    if-eqz v2, :cond_1

    iget v2, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    if-nez v2, :cond_2

    :cond_1
    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/Fraction;->ZERO:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    :goto_0
    return-object v2

    :cond_2
    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    iget v2, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->greatestCommonDivisor(II)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    div-int/2addr v2, v0

    iget v3, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    div-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->mulAndCheck(II)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    div-int/2addr v3, v1

    iget v4, p1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    div-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->mulPosAndCheck(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getReducedFraction(II)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object v2

    goto :goto_0
.end method

.method public negate()Lcom/sec/android/app/sbrowser/decoder/Fraction;
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: too large to negate"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/Fraction;

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    neg-int v1, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/Fraction;-><init>(II)V

    return-object v0
.end method

.method public pow(I)Lcom/sec/android/app/sbrowser/decoder/Fraction;
    .locals 3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-nez p1, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->ONE:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    goto :goto_0

    :cond_1
    if-gez p1, :cond_3

    const/high16 v1, -0x8000

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->invert()Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->pow(I)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object v1

    div-int/lit8 v2, p1, 0x2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->pow(I)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->invert()Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object v1

    neg-int v2, p1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->pow(I)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->multiplyBy(Lcom/sec/android/app/sbrowser/decoder/Fraction;)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object v0

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_4

    div-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->pow(I)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object p0

    goto :goto_0

    :cond_4
    div-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->pow(I)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->multiplyBy(Lcom/sec/android/app/sbrowser/decoder/Fraction;)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object p0

    goto :goto_0
.end method

.method public reduce()Lcom/sec/android/app/sbrowser/decoder/Fraction;
    .locals 3

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/Fraction;->ZERO:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->ZERO:Lcom/sec/android/app/sbrowser/decoder/Fraction;

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    div-int/2addr v1, v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    div-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getFraction(II)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object p0

    goto :goto_0
.end method

.method public subtract(Lcom/sec/android/app/sbrowser/decoder/Fraction;)Lcom/sec/android/app/sbrowser/decoder/Fraction;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->addSub(Lcom/sec/android/app/sbrowser/decoder/Fraction;Z)Lcom/sec/android/app/sbrowser/decoder/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public toProperString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x2f

    const/16 v3, 0x20

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->toProperString:Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    if-nez v1, :cond_1

    const-string v1, "0"

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->toProperString:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->toProperString:Ljava/lang/String;

    return-object v1

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    if-ne v1, v2, :cond_2

    const-string v1, "1"

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    mul-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_3

    const-string v1, "-1"

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    neg-int v1, v1

    :goto_1
    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->denominator:I

    neg-int v2, v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getProperNumerator()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getProperWhole()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->numerator:I

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getProperWhole()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getDenominator()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getNumerator()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getDenominator()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->toProperString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->toString:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getNumerator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/Fraction;->getDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->toString:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/Fraction;->toString:Ljava/lang/String;

    return-object v0
.end method
