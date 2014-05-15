.class Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;->access$2002(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;->access$2002(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;->access$2002(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;->access$2002(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
