.class Lorg/chromium/media/WebAudioMediaCodecBridge;
.super Ljava/lang/Object;
.source "WebAudioMediaCodecBridge.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "media"
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "WebAudioMediaCodec"

.field static final TIMEOUT_MICROSECONDS:J = 0x1f4L


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeAudioFile(Landroid/content/Context;IIJ)Z
    .locals 30
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-wide/16 v28, 0x0

    cmp-long v7, p3, v28

    if-ltz v7, :cond_0

    const-wide/32 v28, 0x7fffffff

    cmp-long v7, p3, v28

    if-lez v7, :cond_1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_1
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V

    invoke-static/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v20

    :try_start_0
    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-wide/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v7

    if-gtz v7, :cond_2

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v21

    const-string v7, "channel-count"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v13

    const-string v7, "sample-rate"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v25

    const-string v7, "mime"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-wide/16 v17, 0x0

    const-string v7, "durationUs"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :try_start_1
    const-string v7, "durationUs"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v17

    :cond_3
    :goto_1
    const-string v7, "WebAudioMediaCodec"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Tracks: "

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v28, " Rate: "

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v28, " Channels: "

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v28, " Mime: "

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v28, " Duration: "

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v17

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v28, " microsec"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p1

    move/from16 v1, v25

    move-wide/from16 v2, v17

    invoke-static {v0, v13, v1, v2, v3}, Lorg/chromium/media/WebAudioMediaCodecBridge;->nativeInitializeDestination(IIIJ)V

    invoke-static/range {v23 .. v23}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v5, v0, v7, v11, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v15

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const/16 v26, 0x0

    const/16 v27, 0x0

    :cond_4
    :goto_2
    if-nez v27, :cond_a

    if-nez v26, :cond_5

    const-wide/16 v28, 0x1f4

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    if-ltz v6, :cond_5

    aget-object v16, v14, v6

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    const-wide/16 v9, 0x0

    if-gez v8, :cond_7

    const/16 v26, 0x1

    const/4 v8, 0x0

    :goto_3
    const/4 v7, 0x0

    if-eqz v26, :cond_8

    const/4 v11, 0x4

    :goto_4
    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    if-nez v26, :cond_5

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    :cond_5
    new-instance v22, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v22 .. v22}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v28, 0x1f4

    move-object/from16 v0, v22

    move-wide/from16 v1, v28

    invoke-virtual {v5, v0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v24

    if-ltz v24, :cond_9

    aget-object v12, v15, v24

    move-object/from16 v0, v22

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v7, :cond_6

    move-object/from16 v0, v22

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v0, p1

    invoke-static {v0, v12, v7}, Lorg/chromium/media/WebAudioMediaCodecBridge;->nativeOnChunkDecoded(ILjava/nio/ByteBuffer;I)V

    :cond_6
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v7, 0x0

    move/from16 v0, v24

    invoke-virtual {v5, v0, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v0, v22

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_4

    const/16 v27, 0x1

    goto :goto_2

    :catch_1
    move-exception v19

    const-string v7, "WebAudioMediaCodec"

    const-string v11, "Cannot get duration"

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    const/4 v7, -0x3

    move/from16 v0, v24

    if-ne v0, v7, :cond_4

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v15

    goto :goto_2

    :cond_a
    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private static native nativeInitializeDestination(IIIJ)V
.end method

.method private static native nativeOnChunkDecoded(ILjava/nio/ByteBuffer;I)V
.end method
