.class public Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;
.super Ljava/lang/Object;
.source "SBrowserFileUploader.java"


# instance fields
.field private MYFILES_INTENT:Ljava/lang/String;

.field private mCameraOutputUri:Landroid/net/Uri;

.field private mDialog:Lcom/sec/android/app/sbrowser/common/SelectFileDialog;

.field private mNoCaptureActivity:Z

.field private mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "com.sec.android.app.myfiles.PICK_DATA"

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->MYFILES_INTENT:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mDialog:Lcom/sec/android/app/sbrowser/common/SelectFileDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->onFileNotSelected()V

    return-void
.end method

.method public chooseFile(Lcom/sec/android/app/sbrowser/common/SelectFileDialog;)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mDialog:Lcom/sec/android/app/sbrowser/common/SelectFileDialog;

    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.CHOOSER"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    const-string v14, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v11, Landroid/content/Intent;

    const-string v14, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v11, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->MYFILES_INTENT:Ljava/lang/String;

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    const-string v14, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v10, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v14, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v14}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    new-instance v4, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "browser-photos"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".jpg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mCameraOutputUri:Landroid/net/Uri;

    const-string v14, "output"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->captureCamera()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v8}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->startFileUploadDialog(Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->captureCamcorder()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v11}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->startFileUploadDialog(Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v12

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mNoCaptureActivity:Z

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->captureMicrophone()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v10}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->startFileUploadDialog(Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.GET_CONTENT"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->noSpecificType()Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "*/*"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v13, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    const/4 v14, 0x1

    new-array v2, v14, [Landroid/content/Intent;

    invoke-virtual {v13, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/os/Parcelable;

    move-object v3, v14

    check-cast v3, [Landroid/os/Parcelable;

    const-string v14, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v6, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v14, "android.intent.category.OPENABLE"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "android.intent.extra.INTENT"

    invoke-virtual {v6, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->startFileUploadDialog(Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->shouldShowImageTypes()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v13, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v14, "image/*"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v13, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v14, "video/*"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->shouldShowAudioTypes()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v13, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v14, "audio/*"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public clearNoCaptureActivityFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mNoCaptureActivity:Z

    return-void
.end method

.method public complete(ILandroid/content/Intent;Landroid/content/ContentResolver;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v5, -0x1

    if-ne p1, v5, :cond_2

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mCameraOutputUri:Landroid/net/Uri;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mDialog:Lcom/sec/android/app/sbrowser/common/SelectFileDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mDialog:Lcom/sec/android/app/sbrowser/common/SelectFileDialog;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v5, p3, v6}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->onFileSelected(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mDialog:Lcom/sec/android/app/sbrowser/common/SelectFileDialog;

    if-eqz v5, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mDialog:Lcom/sec/android/app/sbrowser/common/SelectFileDialog;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Lcom/sec/android/app/sbrowser/common/SelectFileDialog;->onFileSelected(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->cancel()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didResendBecauseNoCaptureActivityFound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SBrowserFileUploader;->mNoCaptureActivity:Z

    return v0
.end method
