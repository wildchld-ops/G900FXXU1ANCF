.class public Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils$CsvUnescaper;,
        Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils$CsvEscaper;
    }
.end annotation


# static fields
.field public static final ESCAPE_CSV:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

.field public static final ESCAPE_ECMASCRIPT:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

.field public static final ESCAPE_HTML3:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

.field public static final ESCAPE_HTML4:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

.field public static final ESCAPE_JAVA:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

.field public static final ESCAPE_XML:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

.field public static final UNESCAPE_CSV:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

.field public static final UNESCAPE_ECMASCRIPT:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

.field public static final UNESCAPE_HTML3:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

.field public static final UNESCAPE_HTML4:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

.field public static final UNESCAPE_JAVA:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

.field public static final UNESCAPE_XML:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    new-array v1, v8, [[Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\""

    aput-object v3, v2, v6

    const-string v3, "\\\""

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\\"

    aput-object v3, v2, v6

    const-string v3, "\\\\"

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-array v1, v7, [Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;->with([Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;)Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    move-result-object v0

    new-array v1, v7, [Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    const/16 v2, 0x20

    const/16 v3, 0x7f

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/UnicodeEscaper;->outsideOf(II)Lcom/sec/android/app/sbrowser/decoder/UnicodeEscaper;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;->with([Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;)Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->ESCAPE_JAVA:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;

    new-array v1, v9, [Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    new-array v3, v10, [[Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "\'"

    aput-object v5, v4, v6

    const-string v5, "\\\'"

    aput-object v5, v4, v7

    aput-object v4, v3, v6

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "\""

    aput-object v5, v4, v6

    const-string v5, "\\\""

    aput-object v5, v4, v7

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "\\"

    aput-object v5, v4, v6

    const-string v5, "\\\\"

    aput-object v5, v4, v7

    aput-object v4, v3, v8

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "/"

    aput-object v5, v4, v6

    const-string v5, "\\/"

    aput-object v5, v4, v7

    aput-object v4, v3, v9

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v7

    const/16 v2, 0x20

    const/16 v3, 0x7f

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/UnicodeEscaper;->outsideOf(II)Lcom/sec/android/app/sbrowser/decoder/UnicodeEscaper;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;-><init>([Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;

    new-array v1, v8, [Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;-><init>([Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->ESCAPE_XML:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;

    new-array v1, v8, [Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;-><init>([Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->ESCAPE_HTML3:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;

    new-array v1, v9, [Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->HTML40_EXTENDED_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v8

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;-><init>([Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->ESCAPE_HTML4:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils$CsvEscaper;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils$CsvEscaper;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->ESCAPE_CSV:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;

    new-array v1, v10, [Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/OctalUnescaper;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/decoder/OctalUnescaper;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/UnicodeUnescaper;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/decoder/UnicodeUnescaper;-><init>()V

    aput-object v2, v1, v7

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v8

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    new-array v3, v10, [[Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "\\\\"

    aput-object v5, v4, v6

    const-string v5, "\\"

    aput-object v5, v4, v7

    aput-object v4, v3, v6

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "\\\""

    aput-object v5, v4, v6

    const-string v5, "\""

    aput-object v5, v4, v7

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "\\\'"

    aput-object v5, v4, v6

    const-string v5, "\'"

    aput-object v5, v4, v7

    aput-object v4, v3, v8

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "\\"

    aput-object v5, v4, v6

    const-string v5, ""

    aput-object v5, v4, v7

    aput-object v4, v3, v9

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v9

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;-><init>([Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->UNESCAPE_JAVA:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->UNESCAPE_JAVA:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;

    new-array v1, v9, [Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper;

    new-array v3, v6, [Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper;-><init>([Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;)V

    aput-object v2, v1, v8

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;-><init>([Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->UNESCAPE_HTML3:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;

    new-array v1, v10, [Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->HTML40_EXTENDED_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v8

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper;

    new-array v3, v6, [Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper;-><init>([Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;)V

    aput-object v2, v1, v9

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;-><init>([Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->UNESCAPE_HTML4:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;

    new-array v1, v9, [Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/EntityArrays;->APOS_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper;

    new-array v3, v6, [Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper;-><init>([Lcom/sec/android/app/sbrowser/decoder/NumericEntityUnescaper$OPTION;)V

    aput-object v2, v1, v8

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;-><init>([Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->UNESCAPE_XML:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils$CsvUnescaper;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils$CsvUnescaper;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->UNESCAPE_CSV:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final escapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->ESCAPE_CSV:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->ESCAPE_HTML3:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->ESCAPE_HTML4:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->ESCAPE_JAVA:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->ESCAPE_XML:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->UNESCAPE_CSV:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->UNESCAPE_HTML3:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->UNESCAPE_HTML4:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->UNESCAPE_JAVA:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->UNESCAPE_XML:Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
