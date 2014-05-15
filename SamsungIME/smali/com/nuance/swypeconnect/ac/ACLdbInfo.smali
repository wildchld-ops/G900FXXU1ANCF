.class Lcom/nuance/swypeconnect/ac/ACLdbInfo;
.super Ljava/lang/Object;
.source "ACLdbInfo.java"


# static fields
.field private static final ALPHA_CORE:I = 0x2

.field private static final CHINESE_CORE:I = 0xa

.field private static final ET9LDBOFFSET_BODY:I = 0x41

.field private static final ET9LDBOFFSET_CHUNK_COUNT_BYTE:I = 0x23

.field private static final ET9LDBOFFSET_CONTENTSMAJORVER:I = 0x35

.field private static final ET9LDBOFFSET_DATABASETYPE:I = 0x21

.field private static final ET9LDBOFFSET_LDBLAYOUTVER:I = 0x20

.field private static final ET9LDBOFFSET_PRIMARYLANGID:I = 0x39

.field private static final ET9LDBOFFSET_SECONDARYLANGID:I = 0x3a

.field private static final ET9NGRAM_CHUNK_ID:I = 0x5

.field private static final ET9_CP_CONTENT_VER_OFFSET:I = 0x2a

.field private static final ET9_CP_LANGUAGE_ID_OFFSET:I = 0x28

.field private static log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private isALM:Ljava/lang/Boolean;

.field private langId:I

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Boolean;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACLdbInfo version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isALM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " langId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iput p1, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->version:I

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM:Ljava/lang/Boolean;

    iput p3, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->langId:I

    return-void
.end method

.method private static getChunkCount(Ljava/io/RandomAccessFile;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    const/16 v3, 0x20

    invoke-static {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v1

    if-le v1, v2, :cond_1

    const/16 v3, 0x23

    invoke-static {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private static getLDBEndAddress(Ljava/io/RandomAccessFile;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x41

    invoke-static {p0, v6}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v3

    int-to-byte v0, v3

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x41

    add-int/lit8 v2, v6, 0x1

    invoke-static {p0, v2}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    const v7, 0xff00

    and-int/2addr v6, v7

    add-int/lit8 v7, v2, 0x1

    invoke-static {p0, v7}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-short v5, v6

    add-int/lit8 v6, v5, 0x1

    add-int/lit16 v6, v6, 0xff

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    mul-int/lit8 v7, v0, 0x3

    add-int v1, v6, v7

    invoke-static {p0, v1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v1, 0x1

    invoke-static {p0, v7}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, 0x2

    invoke-static {p0, v7}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v7

    or-int v4, v6, v7

    add-int/lit8 v6, v4, -0x1

    return v6
.end method

.method private static getValueAtPosition(Ljava/io/RandomAccessFile;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method private static isALM(Ljava/io/RandomAccessFile;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getLDBEndAddress(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-static {p0}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getChunkCount(Ljava/io/RandomAccessFile;)I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v4, v1

    const/4 v5, 0x5

    invoke-static {p0, v4}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v6

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v5, v4, -0x1

    add-int/lit8 v6, v4, 0x1

    invoke-static {p0, v6}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v4, 0x2

    invoke-static {p0, v7}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v4, 0x3

    invoke-static {p0, v7}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v7

    or-int/2addr v6, v7

    add-int v2, v5, v6

    move v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static load(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    .locals 12

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v10, "r"

    invoke-direct {v3, p0, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v10, 0x21

    :try_start_1
    invoke-static {v3, v10}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    sget-object v8, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown LDB type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    if-eqz v3, :cond_a

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    :cond_0
    :goto_0
    move-object v8, v9

    :goto_1
    return-object v8

    :sswitch_0
    const/16 v10, 0x35

    :try_start_3
    invoke-static {v3, v10}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v4

    if-le v4, v8, :cond_1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    const/16 v10, 0x3a

    invoke-static {v3, v10}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v1

    if-le v1, v8, :cond_2

    const/16 v10, 0x39

    invoke-static {v3, v10}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v5

    if-le v5, v8, :cond_4

    shl-int/lit8 v8, v1, 0x8

    or-int v1, v8, v5

    :cond_2
    :goto_2
    new-instance v8, Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    invoke-static {v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM(Ljava/io/RandomAccessFile;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v4, v10, v1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;-><init>(ILjava/lang/Boolean;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_3
    :goto_3
    move-object v2, v3

    goto :goto_1

    :cond_4
    move v1, v8

    goto :goto_2

    :sswitch_1
    const/16 v10, 0x2a

    :try_start_5
    invoke-static {v3, v10}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v4

    if-le v4, v8, :cond_5

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_5
    const/16 v10, 0x29

    invoke-static {v3, v10}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v1

    if-le v1, v8, :cond_6

    const/16 v10, 0x28

    invoke-static {v3, v10}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v5

    if-le v5, v8, :cond_8

    shl-int/lit8 v8, v1, 0x8

    or-int v1, v8, v5

    :cond_6
    :goto_4
    new-instance v8, Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    const/4 v10, 0x0

    invoke-direct {v8, v4, v10, v1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;-><init>(ILjava/lang/Boolean;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    if-eqz v3, :cond_7

    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_7
    :goto_5
    move-object v2, v3

    goto :goto_1

    :cond_8
    move v1, v8

    goto :goto_4

    :catch_0
    move-exception v8

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v8, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing LDB (not found): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v8

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :goto_7
    :try_start_9
    sget-object v8, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing LDB (exception): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v2, :cond_0

    :try_start_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v8

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    :goto_8
    if-eqz v2, :cond_9

    :try_start_b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_9
    :goto_9
    throw v8

    :catch_5
    move-exception v9

    goto/16 :goto_3

    :catch_6
    move-exception v9

    goto :goto_5

    :catch_7
    move-exception v9

    goto :goto_9

    :catchall_1
    move-exception v8

    move-object v2, v3

    goto :goto_8

    :catch_8
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v2, v3

    goto :goto_6

    :cond_a
    move-object v2, v3

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->version:I

    return v0
.end method

.method protected getXT9LanguageId()I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->langId:I

    return v0
.end method

.method protected isALM()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM:Ljava/lang/Boolean;

    return-object v0
.end method
