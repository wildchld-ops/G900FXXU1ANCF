.class public Lcom/sec/android/app/sbrowser/common/SelectFileDialog;
.super Ljava/lang/Object;
.source "SelectFileDialog.java"


# static fields
.field private static final ANY_TYPES:Ljava/lang/String; = "*/*"

.field private static final AUDIO_TYPES:Ljava/lang/String; = "audio/*"

.field private static final CAPTURE_CAMCORDER:Ljava/lang/String; = "camcorder"

.field private static final CAPTURE_CAMERA:Ljava/lang/String; = "camera"

.field private static final CAPTURE_FILESYSTEM:Ljava/lang/String; = "filesystem"

.field private static final CAPTURE_MICROPHONE:Ljava/lang/String; = "microphone"

.field private static final IMAGE_TYPES:Ljava/lang/String; = "image/*"

.field private static final VIDEO_TYPES:Ljava/lang/String; = "video/*"


# instance fields
.field private final mCapture:Ljava/lang/String;

.field private final mFileTypes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeSelectFileDialog:I


# direct methods
.method constructor <init>(ILjava/util/Vector;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mNativeSelectFileDialog:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mFileTypes:Ljava/util/Vector;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mCapture:Ljava/lang/String;

    return-void
.end method

.method private native nativeOnFileNotSelected(I)V
.end method

.method private native nativeOnFileSelected(ILjava/lang/String;)V
.end method


# virtual methods
.method public captureCamcorder()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mCapture:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mCapture:Ljava/lang/String;

    const-string v1, "camcorder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public captureCamera()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->shouldShowImageTypes()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mCapture:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mCapture:Ljava/lang/String;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public captureFilesystem()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mCapture:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mCapture:Ljava/lang/String;

    const-string v1, "filesystem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public captureMicrophone()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->shouldShowAudioTypes()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mCapture:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mCapture:Ljava/lang/String;

    const-string v1, "microphone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noSpecificType()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mFileTypes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mFileTypes:Ljava/util/Vector;

    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFileNotSelected()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mNativeSelectFileDialog:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->nativeOnFileNotSelected(I)V

    return-void
.end method

.method public onFileSelected(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mNativeSelectFileDialog:I

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->nativeOnFileSelected(ILjava/lang/String;)V

    const/4 v8, 0x1

    :cond_0
    :goto_0
    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->onFileNotSelected()V

    :cond_1
    return v8

    :cond_2
    const-string v0, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v6, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mNativeSelectFileDialog:I

    invoke-direct {p0, v0, v7}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->nativeOnFileSelected(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x1

    :cond_3
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public shouldShowAudioTypes()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->noSpecificType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mFileTypes:Ljava/util/Vector;

    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowImageTypes()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->noSpecificType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mFileTypes:Ljava/util/Vector;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowVideoTypes()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->noSpecificType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->mFileTypes:Ljava/util/Vector;

    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
