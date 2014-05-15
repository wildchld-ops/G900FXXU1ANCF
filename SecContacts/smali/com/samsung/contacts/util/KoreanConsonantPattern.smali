.class public Lcom/samsung/contacts/util/KoreanConsonantPattern;
.super Ljava/lang/Object;
.source "KoreanConsonantPattern.java"


# static fields
.field private static KOREAN_RANGE_PATTERN:[Ljava/lang/String;

.field private static mSb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "[\\uAC00-\\uAE4A]"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "[\\uAE4C-\\uB091]"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "[\\uB098-\\uB2E2]"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "[\\uB2E4-\\uB52A]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "[\\uB530-\\uB775]"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "[\\uB77C-\\uB9C1]"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "[\\uB9C8-\\uBC11]"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "[\\uBC14-\\uBE5B]"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "[\\uBE60-\\uC0A5]"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "[\\uC0AC-\\uC2F6]"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "[\\uC2F8-\\uC53D]"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "[\\uC544-\\uC78E]"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "[\\uC790-\\uC9DA]"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "[\\uC9DC-\\uCC27]"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "[\\uCC28-\\uCE6D]"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "[\\uCE74-\\uD0B9]"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "[\\uD0C0-\\uD305]"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "[\\uD30C-\\uD551]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "[\\uD558-\\uD79D]"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/util/KoreanConsonantPattern;->KOREAN_RANGE_PATTERN:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/samsung/contacts/util/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x314e

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Lcom/samsung/contacts/util/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v4, 0x1100

    if-lt v0, v4, :cond_2

    const/16 v4, 0x1112

    if-le v0, v4, :cond_0

    const/16 v4, 0x3131

    if-lt v0, v4, :cond_2

    :cond_0
    if-le v0, v7, :cond_1

    const v4, 0xac00

    if-lt v0, v4, :cond_2

    :cond_1
    const v4, 0xd7a3

    if-le v0, v4, :cond_3

    :cond_2
    sget-object v4, Lcom/samsung/contacts/util/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    :goto_1
    if-lt v2, v3, :cond_5

    sget-object v4, Lcom/samsung/contacts/util/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3
    const/16 v4, 0x3130

    if-le v0, v4, :cond_4

    if-gt v0, v7, :cond_4

    sget-object v4, Lcom/samsung/contacts/util/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/contacts/util/KoreanConsonantPattern;->KOREAN_RANGE_PATTERN:[Ljava/lang/String;

    add-int/lit16 v6, v0, -0x3131

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/samsung/contacts/util/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public static indexOfWord(Landroid/database/CharArrayBuffer;[C)I
    .locals 10

    const/4 v9, 0x0

    const/4 v5, -0x1

    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    sget-object v6, Lcom/samsung/contacts/util/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x0

    :goto_1
    array-length v6, p1

    if-ge v1, v6, :cond_3

    aget-char v6, p1, v1

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/samsung/contacts/util/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    aget-char v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/samsung/contacts/util/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    const-string v7, "\\"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-char v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    sget-object v6, Lcom/samsung/contacts/util/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/contacts/util/KoreanConsonantPattern;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Landroid/database/CharArrayBuffer;->data:[C

    iget v8, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v6, v7, v9, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
