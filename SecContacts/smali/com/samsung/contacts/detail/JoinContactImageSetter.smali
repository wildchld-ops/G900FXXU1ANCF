.class public Lcom/samsung/contacts/detail/JoinContactImageSetter;
.super Lcom/android/contacts/util/ImageViewDrawableSetter;
.source "JoinContactImageSetter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;-><init>()V

    return-void
.end method

.method private getPhotoBinaryData(Landroid/content/Context;Ljava/lang/String;J[B)[B
    .locals 9

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "r"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    const/16 v6, 0x4000

    new-array v1, v6, [B

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-lez v6, :cond_1

    if-eqz p5, :cond_1

    array-length v6, p5

    if-nez v6, :cond_2

    :cond_1
    const/4 p5, 0x0

    :cond_2
    :goto_1
    return-object p5

    :cond_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object p5, v6

    goto :goto_1
.end method


# virtual methods
.method public setContactPhoto(Landroid/content/Context;Ljava/lang/String;J[BLandroid/widget/ImageView;J)V
    .locals 1

    invoke-virtual {p0, p6}, Lcom/samsung/contacts/detail/JoinContactImageSetter;->setTarget(Landroid/widget/ImageView;)V

    invoke-direct/range {p0 .. p5}, Lcom/samsung/contacts/detail/JoinContactImageSetter;->getPhotoBinaryData(Landroid/content/Context;Ljava/lang/String;J[B)[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p7, p8}, Lcom/samsung/contacts/detail/JoinContactImageSetter;->setDefaultImage(J)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, p7, p8}, Lcom/samsung/contacts/detail/JoinContactImageSetter;->setCompressedImage([BJ)Landroid/graphics/Bitmap;

    goto :goto_0
.end method
