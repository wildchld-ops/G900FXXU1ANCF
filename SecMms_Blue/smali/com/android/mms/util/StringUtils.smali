.class public Lcom/android/mms/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cutUtf8ByByte([BI)[B
    .locals 6

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    if-gez p1, :cond_2

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    goto :goto_0

    :cond_2
    if-le v0, p1, :cond_0

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_3

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    if-gt v2, p1, :cond_5

    move v1, v2

    :cond_3
    :goto_2
    new-array v3, v1, [B

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_7

    aget-byte v4, p0, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xc0

    const/16 v5, 0x80

    if-ne v4, v5, :cond_6

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    if-gt v2, p1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_7
    move-object p0, v3

    goto :goto_0
.end method

.method public static cutUtf8ByEucByte([BI)[B
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [B

    return-object v0
.end method
