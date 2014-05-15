.class public Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;
.super Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;
.source "AggregateTranslator.java"


# instance fields
.field private final translators:[Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;


# direct methods
.method public varargs constructor <init>([Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;->translators:[Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/AggregateTranslator;->translators:[Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
