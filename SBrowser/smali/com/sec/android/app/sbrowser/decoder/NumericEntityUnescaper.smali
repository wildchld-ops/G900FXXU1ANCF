.class public Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper;
.super Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;
.source "NumericEntityUnescaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;
    }
.end annotation


# instance fields
.field private final options:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;-><init>()V

    array-length v0, p1

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;->semiColonRequired:Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    goto :goto_0
.end method


# virtual methods
.method public isSet(Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x26

    if-ne v9, v10, :cond_d

    add-int/lit8 v9, v7, -0x2

    if-ge p2, v9, :cond_d

    add-int/lit8 v9, p2, 0x1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x23

    if-ne v9, v10, :cond_d

    add-int/lit8 v8, p2, 0x2

    const/4 v4, 0x0

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v9, 0x78

    if-eq v3, v9, :cond_0

    const/16 v9, 0x58

    if-ne v3, v9, :cond_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    if-ne v8, v7, :cond_1

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_1
    move v1, v8

    :goto_1
    if-ge v1, v7, :cond_5

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-lt v9, v10, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x39

    if-le v9, v10, :cond_4

    :cond_2
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x61

    if-lt v9, v10, :cond_3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x66

    if-le v9, v10, :cond_4

    :cond_3
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x41

    if-lt v9, v10, :cond_5

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x46

    if-gt v9, v10, :cond_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-eq v1, v7, :cond_6

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x3b

    if-ne v9, v10, :cond_6

    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_8

    sget-object v9, Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;->semiColonRequired:Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper;->isSet(Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    sget-object v9, Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;->errorIfNoSemiColon:Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper;->isSet(Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Semi-colon required at end of numeric entity"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_8
    if-eqz v4, :cond_9

    :try_start_0
    invoke-interface {p1, v8, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_3
    const v9, 0xffff

    if-le v2, v9, :cond_a

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    const/4 v9, 0x0

    aget-char v9, v0, v9

    invoke-virtual {p3, v9}, Ljava/io/Writer;->write(I)V

    const/4 v9, 0x1

    aget-char v9, v0, v9

    invoke-virtual {p3, v9}, Ljava/io/Writer;->write(I)V

    :goto_4
    add-int/lit8 v9, v1, 0x2

    sub-int v10, v9, v8

    if-eqz v4, :cond_b

    const/4 v9, 0x1

    :goto_5
    add-int/2addr v10, v9

    if-eqz v6, :cond_c

    const/4 v9, 0x1

    :goto_6
    add-int/2addr v9, v10

    goto/16 :goto_0

    :cond_9
    :try_start_1
    invoke-interface {p1, v8, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_3

    :catch_0
    move-exception v5

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    goto :goto_5

    :cond_c
    const/4 v9, 0x0

    goto :goto_6

    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_0
.end method
