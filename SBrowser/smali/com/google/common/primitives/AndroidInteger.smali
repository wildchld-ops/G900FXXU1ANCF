.class final Lcom/google/common/primitives/AndroidInteger;
.super Ljava/lang/Object;
.source "AndroidInteger.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static tryParse(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/AndroidInteger;->tryParse(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static tryParse(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 12
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v6, 0x0

    const/16 v11, 0x24

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lt p1, v10, :cond_0

    move v3, v4

    :goto_0
    const-string v7, "Invalid radix %s, min radix is %s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v3, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-gt p1, v11, :cond_1

    move v3, v4

    :goto_1
    const-string v7, "Invalid radix %s, max radix is %s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v3, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_2

    move-object v3, v6

    :goto_2
    return-object v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x2d

    if-ne v3, v7, :cond_3

    move v2, v4

    :goto_3
    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_4

    move-object v3, v6

    goto :goto_2

    :cond_3
    move v2, v5

    goto :goto_3

    :cond_4
    invoke-static {p0, v0, p1, v2}, Lcom/google/common/primitives/AndroidInteger;->tryParse(Ljava/lang/String;IIZ)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2
.end method

.method private static tryParse(Ljava/lang/String;IIZ)Ljava/lang/Integer;
    .locals 9
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/high16 v8, -0x8000

    const/4 v6, 0x0

    div-int v2, v8, p2

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v4, p1

    :goto_0
    if-ge v4, v1, :cond_2

    add-int/lit8 p1, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_1

    :cond_0
    :goto_1
    return-object v6

    :cond_1
    if-gt v2, v5, :cond_0

    mul-int v7, v5, p2

    sub-int v3, v7, v0

    if-gt v3, v5, :cond_0

    move v5, v3

    move v4, p1

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    neg-int v5, v5

    if-gez v5, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    const v7, 0x7fffffff

    if-gt v5, v7, :cond_4

    if-ge v5, v8, :cond_5

    :cond_4
    move p1, v4

    goto :goto_1

    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move p1, v4

    goto :goto_1
.end method
