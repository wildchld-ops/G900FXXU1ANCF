.class public Lcom/android/contacts/common/format/PrefixHighlighterImpl;
.super Ljava/lang/Object;
.source "PrefixHighlighterImpl.java"


# instance fields
.field private mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isIndianUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->DEVANAGARI:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BENGALI:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->GUJARATI:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->GURMUKHI:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->MALAYALAM:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->TELUGU:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KANNADA:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->ORIYA:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->TAMIL:Ljava/lang/Character$UnicodeBlock;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doApply(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 8

    const/4 v6, -0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1, p2}, Lcom/android/contacts/common/format/FormatUtils;->indexOfWordPrefix(Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v6, :cond_2

    new-instance v4, Landroid/database/CharArrayBuffer;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Landroid/database/CharArrayBuffer;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/contacts/common/format/FormatUtils;->copyToCharArrayBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/contacts/util/KoreanConsonantPattern;->indexOfWord(Landroid/database/CharArrayBuffer;[C)I

    move-result v1

    :cond_2
    if-eq v1, v6, :cond_0

    iget-object v5, p0, Lcom/android/contacts/common/format/PrefixHighlighterImpl;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v5, :cond_3

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v5, p0, Lcom/android/contacts/common/format/PrefixHighlighterImpl;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    :cond_3
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v1, v5

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/android/contacts/common/format/PrefixHighlighterImpl;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    add-int/2addr v6, v3

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v1, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v2

    goto :goto_0

    :cond_5
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/contacts/common/format/PrefixHighlighterImpl;->isIndianUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
