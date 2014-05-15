.class Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderWriter;
.super Ljava/io/Writer;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/decoder/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/decoder/StrBuilder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderWriter;->this$0:Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderWriter;->this$0:Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderWriter;->this$0:Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderWriter;->this$0:Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    return-void
.end method

.method public write([C)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderWriter;->this$0:Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append([C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    return-void
.end method

.method public write([CII)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder$StrBuilderWriter;->this$0:Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append([CII)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    return-void
.end method
