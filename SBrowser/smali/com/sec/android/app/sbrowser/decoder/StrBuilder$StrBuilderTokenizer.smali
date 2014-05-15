.class Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderTokenizer;
.super Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderTokenizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/decoder/StrBuilder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderTokenizer;->this$0:Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->getContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderTokenizer;->this$0:Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderTokenizer;->this$0:Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderTokenizer;->this$0:Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->size()I

    move-result v2

    invoke-super {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
