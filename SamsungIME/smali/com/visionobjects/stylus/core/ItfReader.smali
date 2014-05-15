.class public Lcom/visionobjects/stylus/core/ItfReader;
.super Ljava/lang/Object;
.source "ItfReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/ItfReader$Error;
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method private constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/ItfReader;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/ItfReader;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/ItfReader;)V
    .locals 3

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ItfReader__SWIG_1(JLcom/visionobjects/stylus/core/ItfReader;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ItfReader;-><init>(JZ)V

    return-void

    :cond_0
    iget-wide v0, p1, Lcom/visionobjects/stylus/core/ItfReader;->b:J

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/ItfReader;->a(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ItfReader;-><init>(JZ)V

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ItfReader__SWIG_0([B)J

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static errorCodeToString(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfReader_errorCodeToString(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public comment()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ItfReader;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfReader_comment__SWIG_1(JLcom/visionobjects/stylus/core/ItfReader;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public comment(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-wide v3, p0, Lcom/visionobjects/stylus/core/ItfReader;->b:J

    invoke-static {v3, v4, p0, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfReader_comment__SWIG_0(JLcom/visionobjects/stylus/core/ItfReader;[B)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method public config()Lcom/visionobjects/stylus/core/InputMethodConfig;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InputMethodConfig;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ItfReader;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfReader_config__SWIG_1(JLcom/visionobjects/stylus/core/ItfReader;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InputMethodConfig;-><init>(JZ)V

    return-object v0
.end method

.method public config(Ljava/lang/String;)Lcom/visionobjects/stylus/core/InputMethodConfig;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/visionobjects/stylus/core/InputMethodConfig;

    iget-wide v2, p0, Lcom/visionobjects/stylus/core/ItfReader;->b:J

    invoke-static {v2, v3, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfReader_config__SWIG_0(JLcom/visionobjects/stylus/core/ItfReader;[B)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/visionobjects/stylus/core/InputMethodConfig;-><init>(JZ)V

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfReader;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/ItfReader;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/ItfReader;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfReader;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_ItfReader(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/ItfReader;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/visionobjects/stylus/core/ItfReader;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/visionobjects/stylus/core/ItfReader;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/ItfReader;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public errorCode()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfReader;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfReader_errorCode(JLcom/visionobjects/stylus/core/ItfReader;)I

    move-result v0

    return v0
.end method

.method public errorLine()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfReader;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfReader_errorLine(JLcom/visionobjects/stylus/core/ItfReader;)I

    move-result v0

    return v0
.end method

.method public errorString()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ItfReader;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfReader_errorString(JLcom/visionobjects/stylus/core/ItfReader;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public failed()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfReader;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfReader_failed(JLcom/visionobjects/stylus/core/ItfReader;)Z

    move-result v0

    return v0
.end method

.method public field()Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ItfReader;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfReader_field__SWIG_1(JLcom/visionobjects/stylus/core/ItfReader;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public field(Ljava/lang/String;)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v2, p0, Lcom/visionobjects/stylus/core/ItfReader;->b:J

    invoke-static {v2, v3, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfReader_field__SWIG_0(JLcom/visionobjects/stylus/core/ItfReader;[B)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public fields()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/visionobjects/stylus/core/ListString;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ItfReader;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfReader_fields(JLcom/visionobjects/stylus/core/ItfReader;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListString;-><init>(JZ)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/ItfReader;->delete()V

    return-void
.end method
