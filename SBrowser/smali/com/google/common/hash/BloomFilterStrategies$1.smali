.class final enum Lcom/google/common/hash/BloomFilterStrategies$1;
.super Lcom/google/common/hash/BloomFilterStrategies;
.source "BloomFilterStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilterStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/BloomFilterStrategies;-><init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies$1;)V

    return-void
.end method


# virtual methods
.method public mightContain(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$BitArray;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Lcom/google/common/hash/Hasher;->putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v2

    long-to-int v0, v2

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    long-to-int v1, v6

    const/4 v4, 0x1

    :goto_0
    if-gt v4, p3, :cond_2

    mul-int v6, v4, v1

    add-int v5, v0, v6

    if-gez v5, :cond_0

    xor-int/lit8 v5, v5, -0x1

    :cond_0
    invoke-virtual {p4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->size()I

    move-result v6

    rem-int v6, v5, v6

    invoke-virtual {p4, v6}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    :goto_1
    return v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$BitArray;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Lcom/google/common/hash/Hasher;->putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v2

    long-to-int v0, v2

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    long-to-int v1, v6

    const/4 v4, 0x1

    :goto_0
    if-gt v4, p3, :cond_1

    mul-int v6, v4, v1

    add-int v5, v0, v6

    if-gez v5, :cond_0

    xor-int/lit8 v5, v5, -0x1

    :cond_0
    invoke-virtual {p4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->size()I

    move-result v6

    rem-int v6, v5, v6

    invoke-virtual {p4, v6}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->set(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
