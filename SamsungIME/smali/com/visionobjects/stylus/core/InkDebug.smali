.class public Lcom/visionobjects/stylus/core/InkDebug;
.super Ljava/lang/Object;
.source "InkDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/InkDebug$Type;
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkDebug__SWIG_0(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkDebug;-><init>(JZ)V

    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/InkDebug;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkDebug;)V
    .locals 3

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkDebug__SWIG_1(JLcom/visionobjects/stylus/core/InkDebug;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkDebug;-><init>(JZ)V

    return-void

    :cond_0
    iget-wide v0, p1, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    goto :goto_0
.end method

.method public static disable()V
    .locals 0

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_disable__SWIG_1()V

    return-void
.end method

.method public static disable(I)V
    .locals 0

    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_disable__SWIG_0(I)V

    return-void
.end method

.method public static disableSerialization()V
    .locals 0

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_disableSerialization()V

    return-void
.end method

.method public static elapsed(Lcom/visionobjects/stylus/core/VoTimeStamp;)J
    .locals 2

    invoke-static {p0}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_elapsed(JLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static enable()V
    .locals 0

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_enable__SWIG_1()V

    return-void
.end method

.method public static enable(I)V
    .locals 0

    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_enable__SWIG_0(I)V

    return-void
.end method

.method public static enableSerialization(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_enableSerialization([B)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFilter()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_getFilter()I

    move-result v0

    return v0
.end method

.method public static getSerializationFilePath()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_getSerializationFilePath()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static serializationEnabled()Z
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_serializationEnabled()Z

    move-result v0

    return v0
.end method

.method public static setTimings(Z)V
    .locals 0

    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_setTimings(Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InkDebug;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkDebug;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InkDebug(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J
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

    instance-of v1, p1, Lcom/visionobjects/stylus/core/InkDebug;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/visionobjects/stylus/core/InkDebug;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/InkDebug;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkDebug;->delete()V

    return-void
.end method

.method public maybeSpace()Lcom/visionobjects/stylus/core/InkDebug;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkDebug;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_maybeSpace(JLcom/visionobjects/stylus/core/InkDebug;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkDebug;-><init>(JZ)V

    return-object v0
.end method

.method public nospace()Lcom/visionobjects/stylus/core/InkDebug;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkDebug;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_nospace(JLcom/visionobjects/stylus/core/InkDebug;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkDebug;-><init>(JZ)V

    return-object v0
.end method

.method public space()Lcom/visionobjects/stylus/core/InkDebug;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkDebug;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_space(JLcom/visionobjects/stylus/core/InkDebug;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkDebug;-><init>(JZ)V

    return-object v0
.end method
