.class public Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
.super Ljava/lang/Object;
.source "StrTokenizer.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final CSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

.field private static final TSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;


# instance fields
.field private chars:[C

.field private delimMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

.field private emptyAsNull:Z

.field private ignoreEmptyTokens:Z

.field private ignoredMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

.field private quoteMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

.field private tokenPos:I

.field private tokens:[Ljava/lang/String;

.field private trimmerMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->commaMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setDelimiterMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->doubleQuoteMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setQuoteMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->noneMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setIgnoredMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->trimMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setTrimmerMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setEmptyTokenAsNull(Z)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setIgnoreEmptyTokens(Z)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->tabMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setDelimiterMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->doubleQuoteMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setQuoteMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->noneMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setIgnoredMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->trimMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setTrimmerMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setEmptyTokenAsNull(Z)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setIgnoreEmptyTokens(Z)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->splitMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->delimMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->noneMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->quoteMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->noneMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->ignoredMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->noneMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->trimmerMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->emptyAsNull:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->ignoreEmptyTokens:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->chars:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->splitMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->delimMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->noneMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->quoteMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->noneMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->ignoredMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->noneMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->trimmerMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->emptyAsNull:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->ignoreEmptyTokens:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->chars:[C

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->chars:[C

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setDelimiterChar(C)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CC)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;-><init>(Ljava/lang/String;C)V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setQuoteChar(C)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setDelimiterMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/decoder/StrMatcher;Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;-><init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setQuoteMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->splitMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->delimMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->noneMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->quoteMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->noneMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->ignoredMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->noneMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->trimmerMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->emptyAsNull:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->ignoreEmptyTokens:Z

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([C)[C

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->chars:[C

    return-void
.end method

.method public constructor <init>([CC)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;-><init>([C)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setDelimiterChar(C)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CCC)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;-><init>([CC)V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setQuoteChar(C)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CLcom/sec/android/app/sbrowser/decoder/StrMatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;-><init>([C)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setDelimiterMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CLcom/sec/android/app/sbrowser/decoder/StrMatcher;Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;-><init>([CLcom/sec/android/app/sbrowser/decoder/StrMatcher;)V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setQuoteMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;-><init>([C)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-void
.end method

.method private addToken(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->isIgnoreEmptyTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->isEmptyTokenAsNull()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkTokenized()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->chars:[C

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3, v3}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokens:[Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->chars:[C

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->chars:[C

    array-length v2, v2

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokens:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static getCSVClone()Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-object v0
.end method

.method public static getCSVInstance()Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getCSVClone()Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getCSVInstance(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getCSVClone()Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->reset(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-object v0
.end method

.method public static getCSVInstance([C)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getCSVClone()Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->reset([C)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-object v0
.end method

.method private static getTSVClone()Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-object v0
.end method

.method public static getTSVInstance()Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getTSVClone()Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getTSVInstance(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getTSVClone()Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->reset(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-object v0
.end method

.method public static getTSVInstance([C)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getTSVClone()Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->reset([C)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-object v0
.end method

.method private isQuote([CIIII)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_2

    add-int v1, p2, v0

    if-ge v1, p3, :cond_0

    add-int v1, p2, v0

    aget-char v1, p1, v1

    add-int v2, p4, v0

    aget-char v2, p1, v2

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private readNextToken([CIILcom/sec/android/app/sbrowser/decoder/StrBuilder;Ljava/util/List;)I
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lcom/sec/android/app/sbrowser/decoder/StrBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    :goto_0
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getIgnoredMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->isMatch([CIII)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getTrimmerMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->isMatch([CIII)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v21

    if-eqz v21, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getDelimiterMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getQuoteMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-lez v4, :cond_1

    :cond_0
    move/from16 v0, p2

    move/from16 v1, p3

    if-lt v0, v1, :cond_2

    const-string v4, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    const/4 v4, -0x1

    :goto_1
    return v4

    :cond_1
    add-int p2, p2, v21

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getDelimiterMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->isMatch([CIII)I

    move-result v20

    if-lez v20, :cond_3

    const-string v4, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    add-int v4, p2, v20

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getQuoteMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->isMatch([CIII)I

    move-result v11

    if-lez v11, :cond_4

    add-int v6, p2, v11

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p2

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->readWithQuotes([CIILcom/sec/android/app/sbrowser/decoder/StrBuilder;Ljava/util/List;II)I

    move-result v4

    goto :goto_1

    :cond_4
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v12 .. v19}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->readWithQuotes([CIILcom/sec/android/app/sbrowser/decoder/StrBuilder;Ljava/util/List;II)I

    move-result v4

    goto :goto_1
.end method

.method private readWithQuotes([CIILcom/sec/android/app/sbrowser/decoder/StrBuilder;Ljava/util/List;II)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lcom/sec/android/app/sbrowser/decoder/StrBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)I"
        }
    .end annotation

    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->clear()Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move/from16 v5, p2

    if-lez p7, :cond_0

    const/4 v15, 0x1

    :goto_0
    const/16 v16, 0x0

    :goto_1
    move/from16 v0, p3

    if-ge v5, v0, :cond_8

    if-eqz v15, :cond_3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->isQuote([CIIII)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int v8, v5, p7

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v9, p3

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->isQuote([CIIII)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, p7

    invoke-virtual {v0, v1, v5, v2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append([CII)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    mul-int/lit8 v3, p7, 0x2

    add-int/2addr v5, v3

    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size()I

    move-result v16

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    add-int v5, v5, p7

    goto :goto_1

    :cond_2
    add-int/lit8 v14, v5, 0x1

    aget-char v3, p1, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size()I

    move-result v16

    move v5, v14

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getDelimiterMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v5, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->isMatch([CIII)I

    move-result v12

    if-lez v12, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    add-int v3, v5, v12

    :goto_2
    return v3

    :cond_4
    if-lez p7, :cond_5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->isQuote([CIIII)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v15, 0x1

    add-int v5, v5, p7

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getIgnoredMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v5, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->isMatch([CIII)I

    move-result v13

    if-lez v13, :cond_6

    add-int/2addr v5, v13

    goto/16 :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getTrimmerMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v5, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->isMatch([CIII)I

    move-result v17

    if-lez v17, :cond_7

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v5, v2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append([CII)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    add-int v5, v5, v17

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v14, v5, 0x1

    aget-char v3, p1, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size()I

    move-result v16

    move v5, v14

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    const/4 v3, -0x1

    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->add(Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->cloneReset()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method cloneReset()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->chars:[C

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->chars:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->chars:[C

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->reset()Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->chars:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->chars:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getDelimiterMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->delimMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object v0
.end method

.method public getIgnoredMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->ignoredMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object v0
.end method

.method public getQuoteMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->quoteMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object v0
.end method

.method public getTokenArray()[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->checkTokenized()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokens:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTokenList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->checkTokenized()V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public getTrimmerMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->trimmerMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->checkTokenized()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenPos:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->checkTokenized()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenPos:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmptyTokenAsNull()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->emptyAsNull:Z

    return v0
.end method

.method public isIgnoreEmptyTokens()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->ignoreEmptyTokens:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenPos:I

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->previous()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenPos:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public previousToken()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenPos:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokens:[Ljava/lang/String;

    return-object p0
.end method

.method public reset(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->reset()Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->chars:[C

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->chars:[C

    goto :goto_0
.end method

.method public reset([C)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->reset()Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([C)[C

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->chars:[C

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "set() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDelimiterChar(C)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->charMatcher(C)Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setDelimiterMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setDelimiterMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->noneMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->delimMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    :goto_0
    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->delimMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    goto :goto_0
.end method

.method public setDelimiterString(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->stringMatcher(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setDelimiterMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyTokenAsNull(Z)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->emptyAsNull:Z

    return-object p0
.end method

.method public setIgnoreEmptyTokens(Z)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->ignoreEmptyTokens:Z

    return-object p0
.end method

.method public setIgnoredChar(C)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->charMatcher(C)Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setIgnoredMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setIgnoredMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->ignoredMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    :cond_0
    return-object p0
.end method

.method public setQuoteChar(C)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->charMatcher(C)Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->setQuoteMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setQuoteMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->quoteMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    :cond_0
    return-object p0
.end method

.method public setTrimmerMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->trimmerMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->checkTokenized()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "StrTokenizer[not tokenized yet]"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrTokenizer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getTokenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :cond_1
    return-object v5

    :cond_2
    new-instance v4, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, p2

    :cond_3
    :goto_0
    if-ltz v2, :cond_1

    if-ge v2, p3, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->readNextToken([CIILcom/sec/android/app/sbrowser/decoder/StrBuilder;Ljava/util/List;)I

    move-result v2

    if-lt v2, p3, :cond_3

    const-string v0, ""

    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method
