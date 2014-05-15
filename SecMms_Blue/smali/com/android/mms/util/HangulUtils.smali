.class public Lcom/android/mms/util/HangulUtils;
.super Ljava/lang/Object;
.source "HangulUtils.java"


# static fields
.field private static KOREAN_JAUM_CONVERT_MAP:[I

.field private static KOREAN_JAUM_CONVERT_MAP_COUNT:I

.field private static KOREAN_RANGE_MAP:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x1e

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/util/HangulUtils;->KOREAN_JAUM_CONVERT_MAP:[I

    sput v1, Lcom/android/mms/util/HangulUtils;->KOREAN_JAUM_CONVERT_MAP_COUNT:I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/util/HangulUtils;->KOREAN_RANGE_MAP:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x11t 0x0t 0x0t
        0x1t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x11t 0x0t 0x0t
        0x4t 0x11t 0x0t 0x0t
        0x5t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x11t 0x0t 0x0t
        0x7t 0x11t 0x0t 0x0t
        0x8t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x11t 0x0t 0x0t
        0xat 0x11t 0x0t 0x0t
        0xbt 0x11t 0x0t 0x0t
        0xct 0x11t 0x0t 0x0t
        0xdt 0x11t 0x0t 0x0t
        0xet 0x11t 0x0t 0x0t
        0xft 0x11t 0x0t 0x0t
        0x10t 0x11t 0x0t 0x0t
        0x11t 0x11t 0x0t 0x0t
        0x12t 0x11t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0xact 0x0t 0x0t
        0x4ct 0xaet 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x98t 0xb0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xe4t 0xb2t 0x0t 0x0t
        0x30t 0xb5t 0x0t 0x0t
        0x7ct 0xb7t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc8t 0xb9t 0x0t 0x0t
        0x14t 0xbct 0x0t 0x0t
        0x60t 0xbet 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xact 0xc0t 0x0t 0x0t
        0xf8t 0xc2t 0x0t 0x0t
        0x44t 0xc5t 0x0t 0x0t
        0x90t 0xc7t 0x0t 0x0t
        0xdct 0xc9t 0x0t 0x0t
        0x28t 0xcct 0x0t 0x0t
        0x74t 0xcet 0x0t 0x0t
        0xc0t 0xd0t 0x0t 0x0t
        0xct 0xd3t 0x0t 0x0t
        0x58t 0xd5t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConsonants(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const v8, 0xac00

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v6, 0x20

    if-ne v0, v6, :cond_1

    :goto_1
    if-lt v3, v5, :cond_4

    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_1
    if-lt v0, v8, :cond_3

    sub-int v6, v0, v8

    div-int/lit16 v6, v6, 0x24c

    add-int/lit16 v0, v6, 0x1100

    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/16 v6, 0x3131

    if-lt v0, v6, :cond_2

    add-int/lit16 v6, v0, -0x3131

    sget v7, Lcom/android/mms/util/HangulUtils;->KOREAN_JAUM_CONVERT_MAP_COUNT:I

    if-ge v6, v7, :cond_0

    sget-object v6, Lcom/android/mms/util/HangulUtils;->KOREAN_JAUM_CONVERT_MAP:[I

    add-int/lit16 v7, v0, -0x3131

    aget v0, v6, v7

    if-nez v0, :cond_2

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public static haveKoreanConsonants(Ljava/lang/String;)Z
    .locals 6

    const/16 v5, 0x3131

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v3, 0x1100

    if-lt v0, v3, :cond_4

    const/16 v3, 0x1112

    if-le v0, v3, :cond_2

    if-lt v0, v5, :cond_4

    :cond_2
    const/16 v3, 0x314e

    if-le v0, v3, :cond_3

    const v3, 0xac00

    if-lt v0, v3, :cond_4

    :cond_3
    const v3, 0xd7a3

    if-gt v0, v3, :cond_4

    if-lt v0, v5, :cond_4

    add-int/lit16 v3, v0, -0x3131

    sget v4, Lcom/android/mms/util/HangulUtils;->KOREAN_JAUM_CONVERT_MAP_COUNT:I

    if-ge v3, v4, :cond_4

    sget-object v3, Lcom/android/mms/util/HangulUtils;->KOREAN_JAUM_CONVERT_MAP:[I

    add-int/lit16 v4, v0, -0x3131

    aget v0, v3, v4

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isIncludingKorean(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v3, 0x1100

    if-lt v0, v3, :cond_4

    const/16 v3, 0x1112

    if-le v0, v3, :cond_2

    const/16 v3, 0x3131

    if-lt v0, v3, :cond_4

    :cond_2
    const/16 v3, 0x314e

    if-le v0, v3, :cond_3

    const v3, 0xac00

    if-lt v0, v3, :cond_4

    :cond_3
    const v3, 0xd7a3

    if-gt v0, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
