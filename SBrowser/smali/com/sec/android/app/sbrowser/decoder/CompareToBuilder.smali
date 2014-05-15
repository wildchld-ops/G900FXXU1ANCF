.class public Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
.super Ljava/lang/Object;
.source "CompareToBuilder.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/decoder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/decoder/Builder",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private comparison:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;Z[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    iget v4, p3, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-nez v4, :cond_2

    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p5, v4}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    return-void
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p0, p1, v2, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/decoder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_3
    new-instance v3, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;Z[Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq v2, p3, :cond_4

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;Z[Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->toComparison()I

    move-result v0

    goto :goto_0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public append(BB)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(CC)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(DD)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public append(FF)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public append(II)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(JJ)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    cmp-long v0, p1, p3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;"
        }
    .end annotation

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_c

    instance-of v2, p1, [J

    if-eqz v2, :cond_4

    check-cast p1, [J

    check-cast p1, [J

    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append([J[J)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    goto :goto_0

    :cond_4
    instance-of v2, p1, [I

    if-eqz v2, :cond_5

    check-cast p1, [I

    check-cast p1, [I

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append([I[I)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    goto :goto_0

    :cond_5
    instance-of v2, p1, [S

    if-eqz v2, :cond_6

    check-cast p1, [S

    check-cast p1, [S

    check-cast p2, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append([S[S)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    goto :goto_0

    :cond_6
    instance-of v2, p1, [C

    if-eqz v2, :cond_7

    check-cast p1, [C

    check-cast p1, [C

    check-cast p2, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append([C[C)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    goto :goto_0

    :cond_7
    instance-of v2, p1, [B

    if-eqz v2, :cond_8

    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append([B[B)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    goto :goto_0

    :cond_8
    instance-of v2, p1, [D

    if-eqz v2, :cond_9

    check-cast p1, [D

    check-cast p1, [D

    check-cast p2, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append([D[D)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    goto :goto_0

    :cond_9
    instance-of v2, p1, [F

    if-eqz v2, :cond_a

    check-cast p1, [F

    check-cast p1, [F

    check-cast p2, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append([F[F)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    goto/16 :goto_0

    :cond_a
    instance-of v2, p1, [Z

    if-eqz v2, :cond_b

    check-cast p1, [Z

    check-cast p1, [Z

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append([Z[Z)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    goto/16 :goto_0

    :cond_b
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    goto/16 :goto_0

    :cond_c
    if-nez p3, :cond_d

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto/16 :goto_0

    :cond_d
    move-object v1, p3

    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto/16 :goto_0
.end method

.method public append(SS)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(ZZ)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public append([B[B)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append(BB)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([C[C)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append(CC)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([D[D)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append(DD)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([F[F)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append(FF)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([I[I)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append(II)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([J[J)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append(JJ)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([S[S)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append(SS)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([Z[Z)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->append(ZZ)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public appendSuper(I)Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public build()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->toComparison()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toComparison()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/CompareToBuilder;->comparison:I

    return v0
.end method
