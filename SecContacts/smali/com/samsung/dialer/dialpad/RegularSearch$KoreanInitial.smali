.class public Lcom/samsung/dialer/dialpad/RegularSearch$KoreanInitial;
.super Ljava/lang/Object;
.source "RegularSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/dialpad/RegularSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KoreanInitial"
.end annotation


# static fields
.field private static final UNICODE_KOREAN_INITIAL_SOUND:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/dialer/dialpad/RegularSearch$KoreanInitial;->UNICODE_KOREAN_INITIAL_SOUND:[C

    return-void

    :array_0
    .array-data 0x2
        0x31t 0x31t
        0x32t 0x31t
        0x34t 0x31t
        0x37t 0x31t
        0x38t 0x31t
        0x39t 0x31t
        0x41t 0x31t
        0x42t 0x31t
        0x43t 0x31t
        0x45t 0x31t
        0x46t 0x31t
        0x47t 0x31t
        0x48t 0x31t
        0x49t 0x31t
        0x4at 0x31t
        0x4bt 0x31t
        0x4ct 0x31t
        0x4dt 0x31t
        0x4et 0x31t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInitialSound(C)C
    .locals 3

    invoke-static {p0}, Lcom/samsung/dialer/dialpad/RegularSearch$KoreanInitial;->isKorean(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const v2, 0xac00

    sub-int v0, p0, v2

    div-int/lit16 v1, v0, 0x24c

    sget-object v2, Lcom/samsung/dialer/dialpad/RegularSearch$KoreanInitial;->UNICODE_KOREAN_INITIAL_SOUND:[C

    aget-char v2, v2, v1

    goto :goto_0
.end method

.method private static isKorean(C)Z
    .locals 1

    const v0, 0xac00

    if-gt v0, p0, :cond_0

    const v0, 0xd7a3

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static matchesInitial(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v4, -0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v4

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v2, v5, v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-gt v0, v2, :cond_5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int v6, v3, v0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/samsung/dialer/dialpad/RegularSearch$KoreanInitial;->getInitialSound(C)C

    move-result v6

    if-eq v5, v6, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int v6, v3, v0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    if-eq v3, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_0
.end method
