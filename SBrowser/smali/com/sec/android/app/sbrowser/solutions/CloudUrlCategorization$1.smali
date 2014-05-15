.class Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$1;
.super Ljava/lang/Object;
.source "CloudUrlCategorization.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;->makeServiceApiCall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$1;->this$0:Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$1;->this$0:Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;

    #getter for: Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;->mBlueCoatUrl:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;->access$000(Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$1;->this$0:Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;

    #getter for: Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;->mSelectedService:I
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;->access$100(Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;)I

    move-result v7

    if-ne v7, v9, :cond_0

    const-string v7, "X-WSL-Verbose"

    const-string v8, "1"

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "X-WSL-Auth"

    const-string v8, "94F26882-9F22-11DE-B4B9-8447ED2E2560"

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_1

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v1, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$1;->this$0:Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;

    #getter for: Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;->mSelectedService:I
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;->access$100(Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;)I

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$1;->this$0:Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;

    #calls: Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;->parseResponse(Ljava/lang/String;)V
    invoke-static {v7, v1}, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;->access$200(Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$1;->this$0:Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;

    #getter for: Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;->mSelectedService:I
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;->access$100(Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;)I

    move-result v7

    if-ne v7, v9, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$1;->this$0:Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;

    invoke-virtual {v7, v1}, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;->findAndSetCategory(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
