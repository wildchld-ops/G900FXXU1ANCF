.class final Lcom/sec/android/app/sbrowser/decoder/CharRange;
.super Ljava/lang/Object;
.source "CharRange.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/decoder/CharRange$1;,
        Lcom/sec/android/app/sbrowser/decoder/CharRange$CharacterIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x72c597c5037807eeL


# instance fields
.field private final end:C

.field private transient iToString:Ljava/lang/String;

.field private final negated:Z

.field private final start:C


# direct methods
.method private constructor <init>(CCZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-le p1, p2, :cond_0

    move v0, p1

    move p1, p2

    move p2, v0

    :cond_0
    iput-char p1, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->start:C

    iput-char p2, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->end:C

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->negated:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/decoder/CharRange;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->negated:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/decoder/CharRange;)C
    .locals 1

    iget-char v0, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->start:C

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/decoder/CharRange;)C
    .locals 1

    iget-char v0, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->end:C

    return v0
.end method

.method public static is(C)Lcom/sec/android/app/sbrowser/decoder/CharRange;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/CharRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/sec/android/app/sbrowser/decoder/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isIn(CC)Lcom/sec/android/app/sbrowser/decoder/CharRange;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/CharRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/decoder/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isNot(C)Lcom/sec/android/app/sbrowser/decoder/CharRange;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/CharRange;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/sec/android/app/sbrowser/decoder/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isNotIn(CC)Lcom/sec/android/app/sbrowser/decoder/CharRange;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/CharRange;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/decoder/CharRange;-><init>(CCZ)V

    return-object v0
.end method


# virtual methods
.method public contains(C)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-char v0, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->start:C

    if-lt p1, v0, :cond_0

    iget-char v0, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->end:C

    if-gt p1, v0, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->negated:Z

    if-eq v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public contains(Lcom/sec/android/app/sbrowser/decoder/CharRange;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Range must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->negated:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p1, Lcom/sec/android/app/sbrowser/decoder/CharRange;->negated:Z

    if-eqz v2, :cond_3

    iget-char v2, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->start:C

    iget-char v3, p1, Lcom/sec/android/app/sbrowser/decoder/CharRange;->start:C

    if-lt v2, v3, :cond_2

    iget-char v2, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->end:C

    iget-char v3, p1, Lcom/sec/android/app/sbrowser/decoder/CharRange;->end:C

    if-gt v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-char v2, p1, Lcom/sec/android/app/sbrowser/decoder/CharRange;->end:C

    iget-char v3, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->start:C

    if-lt v2, v3, :cond_4

    iget-char v2, p1, Lcom/sec/android/app/sbrowser/decoder/CharRange;->start:C

    iget-char v3, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->end:C

    if-le v2, v3, :cond_5

    :cond_4
    move v1, v0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-boolean v2, p1, Lcom/sec/android/app/sbrowser/decoder/CharRange;->negated:Z

    if-eqz v2, :cond_8

    iget-char v2, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->start:C

    if-nez v2, :cond_7

    iget-char v2, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->end:C

    const v3, 0xffff

    if-eq v2, v3, :cond_1

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-char v2, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->start:C

    iget-char v3, p1, Lcom/sec/android/app/sbrowser/decoder/CharRange;->start:C

    if-gt v2, v3, :cond_9

    iget-char v2, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->end:C

    iget-char v3, p1, Lcom/sec/android/app/sbrowser/decoder/CharRange;->end:C

    if-ge v2, v3, :cond_1

    :cond_9
    move v0, v1

    goto :goto_0
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
    instance-of v3, p1, Lcom/sec/android/app/sbrowser/decoder/CharRange;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/CharRange;

    iget-char v3, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->start:C

    iget-char v4, v0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->start:C

    if-ne v3, v4, :cond_3

    iget-char v3, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->end:C

    iget-char v4, v0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->end:C

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->negated:Z

    iget-boolean v4, v0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->negated:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getEnd()C
    .locals 1

    iget-char v0, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->end:C

    return v0
.end method

.method public getStart()C
    .locals 1

    iget-char v0, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->start:C

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-char v0, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->start:C

    add-int/lit8 v0, v0, 0x53

    iget-char v1, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->end:C

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->negated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNegated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->negated:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/CharRange$CharacterIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/decoder/CharRange$CharacterIterator;-><init>(Lcom/sec/android/app/sbrowser/decoder/CharRange;Lcom/sec/android/app/sbrowser/decoder/CharRange$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->iToString:Ljava/lang/String;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/CharRange;->isNegated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-char v1, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->start:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->start:C

    iget-char v2, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->end:C

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->end:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->iToString:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/CharRange;->iToString:Ljava/lang/String;

    return-object v1
.end method
