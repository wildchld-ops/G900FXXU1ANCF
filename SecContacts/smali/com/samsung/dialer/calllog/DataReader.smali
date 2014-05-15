.class public Lcom/samsung/dialer/calllog/DataReader;
.super Ljava/lang/Object;
.source "DataReader.java"


# instance fields
.field private final CHARSET:Ljava/lang/String;

.field private mExceptionFlag:Z

.field private mFilename:Ljava/lang/String;

.field private mReader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    const/4 v9, -0x1

    const/4 v7, -0x2

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v8, p0, Lcom/samsung/dialer/calllog/DataReader;->mExceptionFlag:Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    new-array v2, v6, [B

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    const/4 v6, 0x0

    aget-byte v6, v2, v6

    if-ne v6, v9, :cond_5

    const/4 v6, 0x1

    aget-byte v6, v2, v6

    if-ne v6, v7, :cond_5

    const-string v0, "UTF-16LE"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v5

    :goto_0
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_0
    :goto_1
    move-object v3, v4

    :cond_1
    :goto_2
    if-nez v0, :cond_2

    const-string v0, "ASCII"

    :cond_2
    iput-object v0, p0, Lcom/samsung/dialer/calllog/DataReader;->CHARSET:Ljava/lang/String;

    :try_start_3
    iput-object p1, p0, Lcom/samsung/dialer/calllog/DataReader;->mFilename:Ljava/lang/String;

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v6, p0, Lcom/samsung/dialer/calllog/DataReader;->mReader:Ljava/io/BufferedReader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_3
    :goto_3
    iget-boolean v6, p0, Lcom/samsung/dialer/calllog/DataReader;->mExceptionFlag:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/DataReader;->close()V

    :goto_4
    iput-boolean v8, p0, Lcom/samsung/dialer/calllog/DataReader;->mExceptionFlag:Z

    :cond_4
    return-void

    :cond_5
    const/4 v6, 0x0

    :try_start_5
    aget-byte v6, v2, v6

    if-ne v6, v7, :cond_6

    const/4 v6, 0x1

    aget-byte v6, v2, v6

    if-ne v6, v9, :cond_6

    const-string v0, "UTF-16BE"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    aget-byte v6, v2, v6

    const/16 v7, -0x11

    if-ne v6, v7, :cond_7

    const/4 v6, 0x1

    aget-byte v6, v2, v6

    const/16 v7, -0x45

    if-ne v6, v7, :cond_7

    const/4 v6, 0x2

    aget-byte v6, v2, v6

    const/16 v7, -0x41

    if-ne v6, v7, :cond_7

    const-string v0, "UTF-8"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_7
    const-string v0, "ASCII"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v3, :cond_8

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_8
    :goto_6
    throw v6

    :catch_0
    move-exception v1

    const/4 v6, 0x1

    :try_start_7
    iput-boolean v6, p0, Lcom/samsung/dialer/calllog/DataReader;->mExceptionFlag:Z

    const-string v6, "DataReader"

    const-string v7, "DataReader open error!!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_9

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_9
    :goto_7
    iget-boolean v6, p0, Lcom/samsung/dialer/calllog/DataReader;->mExceptionFlag:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/DataReader;->close()V

    goto :goto_4

    :catchall_1
    move-exception v6

    if-eqz v3, :cond_a

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_a
    :goto_8
    iget-boolean v7, p0, Lcom/samsung/dialer/calllog/DataReader;->mExceptionFlag:Z

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/DataReader;->close()V

    iput-boolean v8, p0, Lcom/samsung/dialer/calllog/DataReader;->mExceptionFlag:Z

    :cond_b
    throw v6

    :catch_1
    move-exception v6

    :goto_9
    if-eqz v3, :cond_1

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v6

    goto/16 :goto_2

    :catch_3
    move-exception v7

    goto :goto_8

    :catch_4
    move-exception v6

    goto :goto_7

    :catch_5
    move-exception v6

    goto :goto_3

    :catch_6
    move-exception v7

    goto :goto_6

    :catch_7
    move-exception v6

    goto/16 :goto_1

    :catchall_2
    move-exception v6

    move-object v3, v4

    goto :goto_5

    :catch_8
    move-exception v6

    move-object v3, v4

    goto :goto_9
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DataReader;->mReader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/dialer/calllog/DataReader;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public readLine()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/dialer/calllog/DataReader;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/dialer/calllog/DataReader;->mExceptionFlag:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/DataReader;->close()V

    :goto_0
    iput-boolean v4, p0, Lcom/samsung/dialer/calllog/DataReader;->mExceptionFlag:Z

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/samsung/dialer/calllog/DataReader;->mExceptionFlag:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v2, p0, Lcom/samsung/dialer/calllog/DataReader;->mExceptionFlag:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/DataReader;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-boolean v3, p0, Lcom/samsung/dialer/calllog/DataReader;->mExceptionFlag:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/DataReader;->close()V

    iput-boolean v4, p0, Lcom/samsung/dialer/calllog/DataReader;->mExceptionFlag:Z

    :cond_1
    throw v2
.end method
