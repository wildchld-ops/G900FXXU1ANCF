.class Lorg/chromium/ui/SelectFileDialog;
.super Ljava/lang/Object;
.source "SelectFileDialog.java"

# interfaces
.implements Lorg/chromium/ui/WindowAndroid$IntentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/SelectFileDialog$DelayedRunnable;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "ui"
.end annotation


# static fields
.field private static final ALL_AUDIO_TYPES:Ljava/lang/String; = "audio/*"

.field private static final ALL_IMAGE_TYPES:Ljava/lang/String; = "image/*"

.field private static final ALL_VIDEO_TYPES:Ljava/lang/String; = "video/*"

.field private static final ANY_TYPES:Ljava/lang/String; = "*/*"

.field private static final AUDIO_TYPE:Ljava/lang/String; = "audio/"

.field private static final CAPTURE_CAMCORDER:Ljava/lang/String; = "camcorder"

.field private static final CAPTURE_CAMERA:Ljava/lang/String; = "camera"

.field private static final CAPTURE_FILESYSTEM:Ljava/lang/String; = "filesystem"

.field private static final CAPTURE_IMAGE_DIRECTORY:Ljava/lang/String; = "browser-photos"

.field private static final CAPTURE_MICROPHONE:Ljava/lang/String; = "microphone"

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/"

.field private static final VIDEO_TYPE:Ljava/lang/String; = "video/"


# instance fields
.field private MYFILES_INTENT:Ljava/lang/String;

.field private mCameraOutputUri:Landroid/net/Uri;

.field private mCapture:Ljava/lang/String;

.field private mFileTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeSelectFileDialog:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.sec.android.app.myfiles.PICK_DATA"

    iput-object v0, p0, Lorg/chromium/ui/SelectFileDialog;->MYFILES_INTENT:Ljava/lang/String;

    iput p1, p0, Lorg/chromium/ui/SelectFileDialog;->mNativeSelectFileDialog:I

    return-void
.end method

.method private acceptSpecificType(Ljava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Lorg/chromium/ui/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/ui/SelectFileDialog;[Ljava/lang/String;Ljava/lang/String;Lorg/chromium/ui/WindowAndroid;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/ui/SelectFileDialog;->selectFileAfterDelay([Ljava/lang/String;Ljava/lang/String;Lorg/chromium/ui/WindowAndroid;)V

    return-void
.end method

.method private captureCamcorder()Z
    .locals 2

    invoke-direct {p0}, Lorg/chromium/ui/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/SelectFileDialog;->mCapture:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/SelectFileDialog;->mCapture:Ljava/lang/String;

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

.method private captureCamera()Z
    .locals 2

    invoke-direct {p0}, Lorg/chromium/ui/SelectFileDialog;->shouldShowImageTypes()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/SelectFileDialog;->mCapture:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/SelectFileDialog;->mCapture:Ljava/lang/String;

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

.method private captureFilesystem()Z
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/SelectFileDialog;->mCapture:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/SelectFileDialog;->mCapture:Ljava/lang/String;

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

.method private captureMicrophone()Z
    .locals 2

    invoke-direct {p0}, Lorg/chromium/ui/SelectFileDialog;->shouldShowAudioTypes()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/SelectFileDialog;->mCapture:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/SelectFileDialog;->mCapture:Ljava/lang/String;

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

.method private static create(I)Lorg/chromium/ui/SelectFileDialog;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/ui/SelectFileDialog;

    invoke-direct {v0, p0}, Lorg/chromium/ui/SelectFileDialog;-><init>(I)V

    return-object v0
.end method

.method private getFileForImageCapture()Ljava/io/File;
    .locals 6

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "browser-photos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v1

    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private native nativeOnFileNotSelected(I)V
.end method

.method private native nativeOnFileSelected(ILjava/lang/String;)V
.end method

.method private noSpecificType()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/chromium/ui/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lorg/chromium/ui/SelectFileDialog;->mFileTypes:Ljava/util/List;

    const-string v2, "*/*"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFileNotSelected()V
    .locals 1

    iget v0, p0, Lorg/chromium/ui/SelectFileDialog;->mNativeSelectFileDialog:I

    invoke-direct {p0, v0}, Lorg/chromium/ui/SelectFileDialog;->nativeOnFileNotSelected(I)V

    return-void
.end method

.method private selectFile([Ljava/lang/String;Ljava/lang/String;Lorg/chromium/ui/WindowAndroid;)V
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/ui/SelectFileDialog$DelayedRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/chromium/ui/SelectFileDialog$DelayedRunnable;-><init>(Lorg/chromium/ui/SelectFileDialog;[Ljava/lang/String;Ljava/lang/String;Lorg/chromium/ui/WindowAndroid;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private selectFileAfterDelay([Ljava/lang/String;Ljava/lang/String;Lorg/chromium/ui/WindowAndroid;)V
    .locals 10

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Lorg/chromium/ui/SelectFileDialog;->mFileTypes:Ljava/util/List;

    iput-object p2, p0, Lorg/chromium/ui/SelectFileDialog;->mCapture:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.CHOOSER"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    iget-object v8, p0, Lorg/chromium/ui/SelectFileDialog;->MYFILES_INTENT:Ljava/lang/String;

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/chromium/ui/SelectFileDialog;->getFileForImageCapture()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lorg/chromium/ui/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    const-string v8, "output"

    iget-object v9, p0, Lorg/chromium/ui/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/chromium/ui/WindowAndroid;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c0080

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lorg/chromium/ui/SelectFileDialog;->captureCamera()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p3, v1, p0, v6}, Lorg/chromium/ui/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/WindowAndroid$IntentCallback;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/chromium/ui/SelectFileDialog;->captureCamcorder()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p3, v0, p0, v6}, Lorg/chromium/ui/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/WindowAndroid$IntentCallback;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.GET_CONTENT"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.category.OPENABLE"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lorg/chromium/ui/SelectFileDialog;->noSpecificType()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-direct {p0}, Lorg/chromium/ui/SelectFileDialog;->shouldShowImageTypes()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "image/*"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "*/*"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v9, "android.intent.extra.INITIAL_INTENTS"

    const/4 v8, 0x0

    new-array v8, v8, [Landroid/content/Intent;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/os/Parcelable;

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v8, "android.intent.extra.INTENT"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p3, v2, p0, v6}, Lorg/chromium/ui/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/WindowAndroid$IntentCallback;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/SelectFileDialog;->onFileNotSelected()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lorg/chromium/ui/SelectFileDialog;->captureMicrophone()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p3, v7, p0, v6}, Lorg/chromium/ui/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/WindowAndroid$IntentCallback;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lorg/chromium/ui/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "video/*"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lorg/chromium/ui/SelectFileDialog;->shouldShowAudioTypes()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "audio/*"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private shouldShowAudioTypes()Z
    .locals 2

    const-string v0, "audio/*"

    const-string v1, "audio/"

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/SelectFileDialog;->shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private shouldShowImageTypes()Z
    .locals 2

    const-string v0, "image/*"

    const-string v1, "image/"

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/SelectFileDialog;->shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lorg/chromium/ui/SelectFileDialog;->noSpecificType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p2}, Lorg/chromium/ui/SelectFileDialog;->acceptSpecificType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private shouldShowVideoTypes()Z
    .locals 2

    const-string v0, "video/*"

    const-string v1, "video/"

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/SelectFileDialog;->shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onIntentCompleted(Lorg/chromium/ui/WindowAndroid;ILandroid/content/ContentResolver;Landroid/content/Intent;)V
    .locals 11

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/ui/SelectFileDialog;->onFileNotSelected()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v10, 0x0

    if-nez p4, :cond_3

    iget v0, p0, Lorg/chromium/ui/SelectFileDialog;->mNativeSelectFileDialog:I

    iget-object v1, p0, Lorg/chromium/ui/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/SelectFileDialog;->nativeOnFileSelected(ILjava/lang/String;)V

    const/4 v10, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v2, p0, Lorg/chromium/ui/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lorg/chromium/ui/WindowAndroid;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    if-nez v10, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/SelectFileDialog;->onFileNotSelected()V

    invoke-virtual {p1}, Lorg/chromium/ui/WindowAndroid;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0081

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/chromium/ui/WindowAndroid;->showError(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_2
    iget v0, p0, Lorg/chromium/ui/SelectFileDialog;->mNativeSelectFileDialog:I

    invoke-direct {p0, v0, v9}, Lorg/chromium/ui/SelectFileDialog;->nativeOnFileSelected(ILjava/lang/String;)V

    const/4 v10, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    if-eqz p3, :cond_5

    :try_start_1
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :cond_5
    :goto_3
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    iget v0, p0, Lorg/chromium/ui/SelectFileDialog;->mNativeSelectFileDialog:I

    invoke-direct {p0, v0, v9}, Lorg/chromium/ui/SelectFileDialog;->nativeOnFileSelected(ILjava/lang/String;)V

    const/4 v10, 0x1

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3
.end method
