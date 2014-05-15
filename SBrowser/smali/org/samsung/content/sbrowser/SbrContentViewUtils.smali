.class public Lorg/samsung/content/sbrowser/SbrContentViewUtils;
.super Ljava/lang/Object;
.source "SbrContentViewUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsHorizontalScroll:Z

.field private mIsPinchZoomGestureInProcess:Z

.field private mScrollDirectionUp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->mScrollDirectionUp:Z

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->mIsPinchZoomGestureInProcess:Z

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->mIsHorizontalScroll:Z

    return-void
.end method

.method public static copyImage(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Landroid/graphics/Bitmap;)V
    .locals 13

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/copyImage.bmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x28

    invoke-virtual {p1, v10, v11, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Not exists"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    if-eqz v8, :cond_2

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_4
    invoke-virtual {v6, v10, v11}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "clipboardEx"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v3, :cond_4

    sget-object v10, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->TAG:Ljava/lang/String;

    const-string v11, "ClipExMngr Exists"

    invoke-static {v10, v11}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    if-eqz v2, :cond_4

    sget-object v10, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->TAG:Ljava/lang/String;

    const-string v11, "clipBmp Exists"

    invoke-static {v10, v11}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v9}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v3, v10, v2}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, ""

    const-string v11, "CopyImage::onMenuItemClick : clipEx.setData returned false."

    invoke-static {v10, v11}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    :cond_4
    :goto_1
    if-eqz v8, :cond_5

    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    move-object v7, v8

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    :try_start_6
    const-string v10, "ClipData"

    const-string v11, "CopyImage::onMenuItemClick : clipEx.setData returned true."

    invoke-static {v10, v11}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v7, v8

    move-object v0, v1

    :goto_2
    :try_start_7
    sget-object v10, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->TAG:Ljava/lang/String;

    const-string v11, "MalformedURLException Exception in copyImage"

    invoke-static {v10, v11, v4}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v7, :cond_8

    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    move-object v0, v1

    goto/16 :goto_0

    :catch_4
    move-exception v4

    :goto_3
    :try_start_9
    sget-object v10, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->TAG:Ljava/lang/String;

    const-string v11, "IOException in copyImage"

    invoke-static {v10, v11, v4}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v7, :cond_9

    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_9
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v7, :cond_a

    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :cond_b
    :goto_5
    throw v10

    :catch_6
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v10

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v10

    move-object v7, v8

    move-object v0, v1

    goto :goto_4

    :catch_7
    move-exception v4

    move-object v0, v1

    goto :goto_3

    :catch_8
    move-exception v4

    move-object v7, v8

    move-object v0, v1

    goto :goto_3

    :catch_9
    move-exception v4

    goto :goto_2

    :catch_a
    move-exception v4

    move-object v0, v1

    goto :goto_2
.end method

.method public static copyImage(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getImageForCopy()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->copyImage(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public static copyLinkAddress(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V
    .locals 5

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0131

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static copyLinkText(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V
    .locals 5

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0131

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static copyNumber(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->saveToClipboard(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0131

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static decodeImage(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener;->onImageDownloadStartNoStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getBottomBarHeight(Landroid/content/Context;)F
    .locals 2

    instance-of v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getBottomBarUi()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getTarget(Lcom/sec/android/app/sbrowser/common/DataUri;Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;)Ljava/io/File;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dat"

    const-string v1, "yyyy-MM-dd-HH-mm-ss-"

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isDownloadInternalMemory()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSDCardPath()Ljava/lang/String;

    move-result-object v9

    :cond_0
    if-nez v9, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_2
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/DataUri;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v0

    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    return-object v10
.end method

.method public static getToolBarHeight(Landroid/content/Context;)F
    .locals 2

    instance-of v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBottomBarVisible(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v2, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isBottomBarVisible()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static isHideURLFeatureEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isHideURLPrefEnabled()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLinkify(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "tel:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mailto:?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mailto:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "geo:0,0?q="

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMultiwindowMode(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    check-cast p0, Landroid/app/Activity;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getZoneInfo()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isToolBarVisible(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v2, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isToolbarVisible()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static openContact(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone"

    const/4 v2, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SBrowserMainActivityContextId"

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openDailPad(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openImage(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/chromium/content/browser/LoadUrlParams;

    invoke-direct {v1, p1}, Lorg/chromium/content/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentView;->loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V

    :cond_0
    return-void
.end method

.method public static openImageInNewTab(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V
    .locals 3

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isMaxTabLimitReached()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getGlobalTabCounter()I

    move-result v0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getMaxTabCounter()I

    move-result v1

    if-lt v0, v1, :cond_3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c00e4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0c00e7

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003d

    new-instance v2, Lorg/samsung/content/sbrowser/SbrContentViewUtils$3;

    invoke-direct {v2}, Lorg/samsung/content/sbrowser/SbrContentViewUtils$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    const v0, 0x7f0c00e2

    goto :goto_1

    :cond_2
    const v0, 0x7f0c00e3

    goto :goto_2

    :cond_3
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->openImageInNewTab(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static openIncognitoModeTab(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V
    .locals 3

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isMaxTabLimitReached()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getGlobalTabCounter()I

    move-result v0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getMaxTabCounter()I

    move-result v1

    if-lt v0, v1, :cond_3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c00e4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0c00e7

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003d

    new-instance v2, Lorg/samsung/content/sbrowser/SbrContentViewUtils$2;

    invoke-direct {v2}, Lorg/samsung/content/sbrowser/SbrContentViewUtils$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    const v0, 0x7f0c00e2

    goto :goto_1

    :cond_2
    const v0, 0x7f0c00e3

    goto :goto_2

    :cond_3
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->openIncognitoModeTab(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static openLink(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    new-instance v1, Lorg/chromium/content/browser/LoadUrlParams;

    invoke-direct {v1, p1}, Lorg/chromium/content/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentView;->loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V

    return-void
.end method

.method public static openLinkNewTab(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V
    .locals 4

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isMaxTabLimitReached()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getGlobalTabCounter()I

    move-result v1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getMaxTabCounter()I

    move-result v2

    if-lt v1, v2, :cond_3

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0c00e4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0c00e7

    :goto_2
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c003d

    new-instance v3, Lorg/samsung/content/sbrowser/SbrContentViewUtils$1;

    invoke-direct {v3}, Lorg/samsung/content/sbrowser/SbrContentViewUtils$1;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    const v1, 0x7f0c00e2

    goto :goto_1

    :cond_2
    const v1, 0x7f0c00e3

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->openUrlInCurrentModel(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)V

    goto :goto_0
.end method

.method public static pageInfo(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->saveToClipboard(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    return-void
.end method

.method public static saveImage(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V
    .locals 14

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/DataUri;->isDataUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v10, 0x0

    :try_start_0
    new-instance v13, Lcom/sec/android/app/sbrowser/common/DataUri;

    invoke-direct {v13, p1}, Lcom/sec/android/app/sbrowser/common/DataUri;-><init>(Ljava/lang/String;)V

    invoke-static {v13, p0}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->getTarget(Lcom/sec/android/app/sbrowser/common/DataUri;Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;)Ljava/io/File;

    move-result-object v12

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c007e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/DataUri;->getData()[B

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/DataUri;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/DataUri;->getData()[B

    move-result-object v6

    array-length v6, v6

    int-to-long v6, v6

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v11, :cond_3

    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v10, v11

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v9

    sget-object v1, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveImage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/generic/util/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v11

    goto :goto_0

    :catch_1
    move-exception v9

    :goto_1
    :try_start_3
    sget-object v1, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveImage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/generic/util/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_0

    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v9

    sget-object v1, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveImage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/generic/util/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v9

    :goto_2
    :try_start_5
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c007f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_0

    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v9

    sget-object v1, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveImage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/generic/util/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v10, :cond_1

    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_1
    :goto_4
    throw v1

    :catch_5
    move-exception v9

    sget-object v2, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveImage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/generic/util/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;->start()V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v10, v11

    goto :goto_3

    :catch_6
    move-exception v9

    move-object v10, v11

    goto :goto_2

    :catch_7
    move-exception v9

    move-object v10, v11

    goto/16 :goto_1

    :cond_3
    move-object v10, v11

    goto/16 :goto_0
.end method

.method public static saveLink(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserContextMenuDownloader;->start()V

    return-void
.end method

.method public static saveToClipboard(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V
    .locals 4

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public static selectLastTouchText(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v9

    iput-boolean v10, v9, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSpenTextSelectionMode:Z

    new-array v2, v11, [I

    new-array v8, v11, [I

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v9

    invoke-virtual {v9, v2}, Lorg/chromium/content/browser/ContentView;->getLocationInWindow([I)V

    aput v10, v8, v10

    const/4 v9, 0x1

    aput v10, v8, v9

    const/4 v7, 0x0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v9

    instance-of v9, v9, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v9, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewGestureHandler;->getEventX()F

    move-result v9

    float-to-int v5, v9

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewGestureHandler;->getEventY()F

    move-result v9

    float-to-int v6, v9

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->computeHorizontalScrollOffset()I

    move-result v9

    add-int v4, v5, v9

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v9

    add-int v3, v6, v9

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/input/SelectionHandleController;->allowAutomaticShowing()V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v9

    invoke-virtual {v9, v4, v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->selectLastTouchText(II)V

    return-void
.end method


# virtual methods
.method public getIsScrollUp()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->mScrollDirectionUp:Z

    return v0
.end method

.method public isHorizontalScroll()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->mIsHorizontalScroll:Z

    return v0
.end method

.method public isPinchZoomGestureHandlingInProcess()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->mIsPinchZoomGestureInProcess:Z

    return v0
.end method

.method public setIsHorizontalScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->mIsHorizontalScroll:Z

    return-void
.end method

.method public setIsScrollUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->mScrollDirectionUp:Z

    return-void
.end method

.method public setPinchZoomGestureHandlingState(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->mIsPinchZoomGestureInProcess:Z

    return-void
.end method
