.class public abstract Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
.super Ljava/lang/Object;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/decoder/StrMatcher$TrimMatcher;,
        Lcom/sec/android/app/sbrowser/decoder/StrMatcher$NoMatcher;,
        Lcom/sec/android/app/sbrowser/decoder/StrMatcher$StringMatcher;,
        Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;,
        Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharSetMatcher;
    }
.end annotation


# static fields
.field private static final COMMA_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

.field private static final DOUBLE_QUOTE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

.field private static final NONE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

.field private static final QUOTE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

.field private static final SINGLE_QUOTE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

.field private static final SPACE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

.field private static final SPLIT_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

.field private static final TAB_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

.field private static final TRIM_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->COMMA_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->TAB_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->SPACE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharSetMatcher;

    const-string v1, " \t\n\r\u000c"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->SPLIT_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$TrimMatcher;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$TrimMatcher;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->TRIM_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->SINGLE_QUOTE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharSetMatcher;

    const-string v1, "\'\""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->QUOTE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$NoMatcher;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$NoMatcher;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->NONE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charMatcher(C)Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0
.end method

.method public static charSetMatcher(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->NONE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;-><init>(C)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharSetMatcher;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharSetMatcher;-><init>([C)V

    goto :goto_0
.end method

.method public static varargs charSetMatcher([C)Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->NONE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    :goto_0
    return-object v0

    :cond_1
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    aget-char v1, p0, v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharMatcher;-><init>(C)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharSetMatcher;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$CharSetMatcher;-><init>([C)V

    goto :goto_0
.end method

.method public static commaMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->COMMA_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object v0
.end method

.method public static doubleQuoteMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object v0
.end method

.method public static noneMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->NONE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object v0
.end method

.method public static quoteMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->QUOTE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object v0
.end method

.method public static singleQuoteMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->SINGLE_QUOTE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object v0
.end method

.method public static spaceMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->SPACE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object v0
.end method

.method public static splitMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->SPLIT_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object v0
.end method

.method public static stringMatcher(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/decoder/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->NONE_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$StringMatcher;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$StringMatcher;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static tabMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->TAB_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object v0
.end method

.method public static trimMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->TRIM_MATCHER:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object v0
.end method


# virtual methods
.method public isMatch([CI)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->isMatch([CIII)I

    move-result v0

    return v0
.end method

.method public abstract isMatch([CIII)I
.end method
