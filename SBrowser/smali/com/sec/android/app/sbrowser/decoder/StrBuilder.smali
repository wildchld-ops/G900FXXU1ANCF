.class public Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
.super Ljava/lang/Object;
.source "StrBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderWriter;,
        Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderReader;,
        Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderTokenizer;
    }
.end annotation


# static fields
.field static final CAPACITY:I = 0x20

.field private static final serialVersionUID:J = 0x69dea51fe8fc7e4bL


# instance fields
.field protected buffer:[C

.field private newLine:Ljava/lang/String;

.field private nullText:Ljava/lang/String;

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    const/16 p1, 0x20

    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    goto :goto_0
.end method

.method private deleteImpl(III)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    return-void
.end method

.method private replaceImpl(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;Ljava/lang/String;III)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 7

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-nez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    if-nez p2, :cond_3

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    move v1, p3

    :goto_1
    if-ge v1, p4, :cond_0

    if-eqz p5, :cond_0

    invoke-virtual {p1, v6, v1, p3, p4}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->isMatch([CIII)I

    move-result v3

    if-lez v3, :cond_2

    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    sub-int v0, p4, v3

    add-int p4, v0, v5

    add-int v0, v1, v5

    add-int/lit8 v1, v0, -0x1

    if-lez p5, :cond_2

    add-int/lit8 p5, p5, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0
.end method

.method private replaceImpl(IIILjava/lang/String;I)V
    .locals 5

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    sub-int/2addr v1, p3

    add-int v0, v1, p5

    if-eq p5, p3, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int v3, p1, p5

    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    sub-int/2addr v4, p2

    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    :cond_0
    if-lez p5, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-virtual {p4, v1, p5, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1
    return-void
.end method


# virtual methods
.method public append(C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    aput-char p1, v1, v2

    return-object p0
.end method

.method public append(D)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(J)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 5

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNull()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v0

    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-static {v2, v3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 3

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNull()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v1

    if-le p2, v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "startIndex must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-ltz p3, :cond_4

    add-int v1, p2, p3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v2

    if-le v1, v2, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "length must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-lez p3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    add-int v1, p2, p3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->getChars(II[CI)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNull()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNull()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNull()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 4

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNull()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v0

    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v1, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Ljava/lang/String;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 3

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNull()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "startIndex must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-ltz p3, :cond_4

    add-int v1, p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "length must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-lez p3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    add-int v1, p2, p3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 4

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNull()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v0

    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v1, v3, v0}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 3

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNull()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le p2, v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "startIndex must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-ltz p3, :cond_4

    add-int v1, p2, p3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-le v1, v2, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "length must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-lez p3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    add-int v1, p2, p3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Z)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 4

    const/16 v3, 0x65

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    const/16 v2, 0x74

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    const/16 v2, 0x72

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    const/16 v2, 0x75

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    aput-char v3, v0, v1

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    const/16 v2, 0x66

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    const/16 v2, 0x61

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    const/16 v2, 0x73

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public append([C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 4

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNull()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v1, p1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v0

    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append([CII)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 4

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNull()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-ltz p2, :cond_2

    array-length v1, p1

    if-le p2, v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid startIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-ltz p3, :cond_4

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-lez p3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    goto :goto_0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/CharSequence;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendAll(Ljava/lang/Iterable;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lcom/sec/android/app/sbrowser/decoder/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendAll(Ljava/util/Iterator;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Lcom/sec/android/app/sbrowser/decoder/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendAll([Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 5

    if-eqz p1, :cond_0

    array-length v4, p1

    if-lez v4, :cond_0

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendFixedWidthPadLeft(IIC)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 7

    if-lez p2, :cond_1

    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v4, p2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, p2, :cond_3

    sub-int v4, v3, p2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v6, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    invoke-virtual {v2, v4, v3, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    :goto_1
    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    sub-int v1, p2, v3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v5, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v5, v0

    aput-char p3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v6, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v6, v1

    invoke-virtual {v2, v4, v3, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1
.end method

.method public appendFixedWidthPadRight(IIC)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendFixedWidthPadRight(Ljava/lang/Object;IC)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadRight(Ljava/lang/Object;IC)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 7

    const/4 v6, 0x0

    if-lez p2, :cond_2

    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v4, p2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, p2, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v5, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    invoke-virtual {v2, v6, p2, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1
    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    :cond_2
    return-object p0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    sub-int v1, p2, v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v5, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    invoke-virtual {v2, v6, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v5, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v5, v3

    add-int/2addr v5, v0

    aput-char p3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public appendNewLine()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->newLine:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->newLine:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public appendNull()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->nullText:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public appendPadding(IC)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 4

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    aput-char p2, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendSeparator(C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    :cond_0
    return-object p0
.end method

.method public appendSeparator(CC)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    goto :goto_0
.end method

.method public appendSeparator(CI)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 0

    if-lez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSeparator(Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    :cond_0
    return-object p0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/android/app/sbrowser/decoder/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/decoder/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public appendWithSeparators(Ljava/util/Iterator;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/android/app/sbrowser/decoder/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/decoder/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public appendWithSeparators([Ljava/lang/Object;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 2

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/decoder/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    const/4 v0, 0x1

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendln(C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNewLine()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(D)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(D)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNewLine()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(F)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(F)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNewLine()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNewLine()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(J)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(J)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNewLine()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNewLine()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNewLine()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNewLine()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNewLine()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNewLine()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/StringBuffer;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNewLine()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNewLine()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Z)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Z)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNewLine()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append([C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNewLine()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([CII)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append([CII)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendNewLine()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asReader()Ljava/io/Reader;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderReader;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderReader;-><init>(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;)V

    return-object v0
.end method

.method public asTokenizer()Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderTokenizer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderTokenizer;-><init>(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;)V

    return-object v0
.end method

.method public asWriter()Ljava/io/Writer;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderWriter;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderWriter;-><init>(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;)V

    return-object v0
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public clear()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    return-object p0
.end method

.method public contains(C)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-ge v0, v2, :cond_1

    aget-char v2, v1, v0

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public contains(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->indexOf(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public delete(II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->validateRange(II)I

    move-result p2

    sub-int v0, p2, p1

    if-lez v0, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->deleteImpl(III)V

    :cond_0
    return-object p0
.end method

.method public deleteAll(C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    aget-char v3, v3, v0

    if-ne v3, p1, :cond_2

    move v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    aget-char v3, v3, v0

    if-eq v3, p1, :cond_0

    :cond_1
    sub-int v1, v0, v2

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->deleteImpl(III)V

    sub-int/2addr v0, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public deleteAll(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->replace(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;Ljava/lang/String;III)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deleteAll(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    if-lez v1, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_1

    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->deleteImpl(III)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public deleteCharAt(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->deleteImpl(III)V

    return-object p0
.end method

.method public deleteFirst(C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_1

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->deleteImpl(III)V

    :cond_0
    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public deleteFirst(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->replace(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;Ljava/lang/String;III)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deleteFirst(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    if-lez v1, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->deleteImpl(III)V

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-gt v1, v5, :cond_0

    iget v5, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    sub-int v2, v5, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    aget-char v5, v5, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    array-length v1, v1

    if-le p1, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p0
.end method

.method public equals(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v5, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    iget v6, p1, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-eq v5, v6, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v5, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v0, v5, -0x1

    :goto_1
    if-ltz v0, :cond_0

    aget-char v5, v2, v0

    aget-char v6, v1, v0

    if-eq v5, v6, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->equals(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsIgnoreCase(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget v7, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    iget v8, p1, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-eq v7, v8, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v7, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v2, v7, -0x1

    :goto_1
    if-ltz v2, :cond_0

    aget-char v0, v4, v2

    aget-char v1, v3, v2

    if-eq v0, v1, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    if-eq v7, v8, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public getChars(II[CI)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v0

    if-le p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_2
    if-le p1, p2, :cond_3

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getChars([C)[C
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v1, v0, :cond_1

    :cond_0
    new-array p1, v0, [C

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public getNewLineText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->newLine:Ljava/lang/String;

    return-object v0
.end method

.method public getNullText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    const/4 v1, 0x0

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_0

    mul-int/lit8 v3, v1, 0x1f

    aget-char v4, v0, v2

    add-int v1, v3, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(C)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->indexOf(CI)I

    move-result v0

    return v0
.end method

.method public indexOf(CI)I
    .locals 4

    const/4 v2, -0x1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-lt p2, v3, :cond_2

    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    move v0, p2

    :goto_1
    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-ge v0, v3, :cond_3

    aget-char v3, v1, v0

    if-eq v3, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public indexOf(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->indexOf(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;I)I
    .locals 5

    const/4 v3, -0x1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    if-eqz p1, :cond_1

    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-lt p2, v4, :cond_3

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    move v1, p2

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-gtz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 8

    const/4 v6, 0x0

    const/4 v5, -0x1

    if-gez p2, :cond_0

    move p2, v6

    :cond_0
    if-eqz p1, :cond_1

    iget v7, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-lt p2, v7, :cond_3

    :cond_1
    move p2, v5

    :cond_2
    :goto_0
    return p2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_4

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5, p2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->indexOf(CI)I

    move-result p2

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_2

    iget v6, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-le v3, v6, :cond_5

    move p2, v5

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v6, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    sub-int/2addr v6, v3

    add-int/lit8 v2, v6, 0x1

    move v0, p2

    :goto_1
    if-ge v0, v2, :cond_8

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v7, v0, v1

    aget-char v7, v4, v7

    if-eq v6, v7, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move p2, v0

    goto :goto_0

    :cond_8
    move p2, v5

    goto :goto_0
.end method

.method public insert(IC)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->validateIndex(I)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    return-object p0
.end method

.method public insert(ID)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->insert(ILjava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->insert(ILjava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->insert(ILjava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->insert(ILjava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->insert(ILjava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->insert(ILjava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->nullText:Ljava/lang/String;

    :cond_0
    if-nez p2, :cond_2

    move v1, v2

    :goto_0
    if-lez v1, :cond_1

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int v0, v3, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int v5, p1, v1

    iget v6, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    sub-int/2addr v6, p1

    invoke-static {v3, p1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-virtual {p2, v2, v1, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public insert(IZ)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 6

    const/16 v5, 0x65

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->validateIndex(I)V

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int/lit8 v3, p1, 0x4

    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x74

    aput-char v2, v1, p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int/lit8 p1, v0, 0x1

    const/16 v2, 0x72

    aput-char v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    aput-char v5, v1, v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    move p1, v0

    :goto_0
    return-object p0

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int/lit8 v3, p1, 0x5

    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x66

    aput-char v2, v1, p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int/lit8 p1, v0, 0x1

    const/16 v2, 0x61

    aput-char v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x6c

    aput-char v2, v1, p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int/lit8 p1, v0, 0x1

    const/16 v2, 0x73

    aput-char v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    aput-char v5, v1, p1

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    goto :goto_0
.end method

.method public insert(I[C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->insert(ILjava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v0, p2

    if-lez v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int v3, p1, v0

    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    goto :goto_0
.end method

.method public insert(I[CII)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->insert(ILjava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-ltz p3, :cond_2

    array-length v0, p2

    if-le p3, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ltz p4, :cond_4

    add-int v0, p3, p4

    array-length v1, p2

    if-le v0, v1, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-lez p4, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int v2, p1, p4

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastIndexOf(C)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(CI)I
    .locals 3

    const/4 v1, -0x1

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-lt p2, v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 p2, v2, -0x1

    :cond_0
    if-gez p2, :cond_2

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, p2

    :goto_1
    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    aget-char v2, v2, v0

    if-eq v2, p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public lastIndexOf(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->lastIndexOf(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;I)I
    .locals 5

    const/4 v3, -0x1

    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-lt p2, v4, :cond_0

    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 p2, v4, -0x1

    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_3

    :cond_1
    move v2, v3

    :cond_2
    :goto_0
    return v2

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int/lit8 v1, p2, 0x1

    move v2, p2

    :goto_1
    if-ltz v2, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v4, v1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-gtz v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 7

    const/4 v3, -0x1

    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-lt p2, v4, :cond_0

    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 p2, v4, -0x1

    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_3

    :cond_1
    move v0, v3

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-gt v2, v4, :cond_6

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3, p2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    goto :goto_0

    :cond_4
    sub-int v4, p2, v2

    add-int/lit8 v0, v4, 0x1

    :goto_1
    if-ltz v0, :cond_7

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int v6, v0, v1

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-nez v2, :cond_7

    move v0, p2

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_0
.end method

.method public leftString(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-gtz p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, v3, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    return v0
.end method

.method public midString(II)Ljava/lang/String;
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-lez p2, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-lt p1, v0, :cond_2

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int v1, p1, p2

    if-gt v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public minimizeCapacity()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    array-length v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p0
.end method

.method public replace(IILjava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 6

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->validateRange(II)I

    move-result p2

    if-nez p3, :cond_0

    const/4 v5, 0x0

    :goto_0
    sub-int v3, p2, p1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    return-object p0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0
.end method

.method public replace(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;Ljava/lang/String;III)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    invoke-virtual {p0, p3, p4}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->validateRange(II)I

    move-result p4

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->replaceImpl(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;Ljava/lang/String;III)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceAll(CC)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 2

    if-eq p1, p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    aput-char p2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public replaceAll(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 6

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->replace(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;Ljava/lang/String;III)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v3, v0

    :goto_0
    if-lez v3, :cond_2

    if-nez p2, :cond_1

    move v5, v0

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    :goto_2
    if-ltz v1, :cond_2

    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    add-int v0, v1, v5

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public replaceFirst(CC)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 2

    if-eq p1, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    aput-char p2, v1, v0

    :cond_0
    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public replaceFirst(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 6

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->replace(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;Ljava/lang/String;III)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_1

    move v3, v5

    :goto_0
    if-lez v3, :cond_0

    invoke-virtual {p0, p1, v5}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    if-nez p2, :cond_2

    :goto_1
    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1
.end method

.method public reverse()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 6

    iget v5, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-nez v5, :cond_1

    :cond_0
    return-object p0

    :cond_1
    iget v5, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    div-int/lit8 v1, v5, 0x2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v5, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    add-int/lit8 v3, v5, -0x1

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v4, v0, v2

    aget-char v5, v0, v3

    aput-char v5, v0, v2

    aput-char v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public rightString(I)Ljava/lang/String;
    .locals 4

    if-gtz p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public setCharAt(IC)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    return-object p0
.end method

.method public setLength(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 5

    if-gez p1, :cond_0

    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3

    :cond_0
    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-ge p1, v3, :cond_2

    iput p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    :cond_1
    return-object p0

    :cond_2
    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-le p1, v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->ensureCapacity(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    move v1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    const/4 v4, 0x0

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setNewLineText(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->newLine:Ljava/lang/String;

    return-object p0
.end method

.method public setNullText(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->nullText:Ljava/lang/String;

    return-object p0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-gt v1, v4, :cond_0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    aget-char v4, v4, v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-le p2, v0, :cond_1

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    if-le p1, p2, :cond_2

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->validateRange(II)I

    move-result p2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-nez v1, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    new-array v0, v1, [C

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toCharArray(II)[C
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->validateRange(II)I

    move-result p2

    sub-int v1, p2, p1

    if-nez v1, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [C

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    invoke-static {v2, p1, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toStringBuffer()Ljava/lang/StringBuffer;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public trim()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
    .locals 5

    const/16 v4, 0x20

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-char v3, v0, v2

    if-gt v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v2, v1, :cond_3

    add-int/lit8 v3, v1, -0x1

    aget-char v3, v0, v3

    if-gt v3, v4, :cond_3

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->delete(II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    :cond_4
    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->delete(II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    goto :goto_0
.end method

.method protected validateIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    return-void
.end method

.method protected validateRange(II)I
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    if-le p2, v0, :cond_1

    iget p2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size:I

    :cond_1
    if-le p1, p2, :cond_2

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return p2
.end method
