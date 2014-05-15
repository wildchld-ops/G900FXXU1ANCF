.class public Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;
.super Ljava/lang/Object;
.source "PrintSec.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final DIALOG_PRINT_PROGRESS:I = 0x65

.field static final PRINT_PAGE:I = 0x1

.field static final PRINT_SCREEN:I = 0x0

.field public static final STATE_CANCELLED:I = 0x1

.field static final STATE_DONE:I = 0x2

.field static final STATE_RUNNING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PrintSec"


# instance fields
.field final handler:Landroid/os/Handler;

.field private mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

.field private mContentView:Lorg/chromium/content/browser/ContentView;

.field mCurPage:I

.field private mImagePath:Ljava/lang/String;

.field mPageCount:I

.field private mProgress:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mState:I

.field final printDelayhandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mProgress:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mCurPage:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mPageCount:I

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$2;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$4;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->printDelayhandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mProgress:I

    return p1
.end method

.method private deletePrintFile(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-gez v3, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const-string v3, "PrintSec"

    const-string v4, "Delete folder"

    invoke-static {v3, v4}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const-string v3, "PrintSec"

    const-string v4, "Delete File"

    invoke-static {v3, v4}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private printScreen()V
    .locals 9

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v4

    if-lez v5, :cond_0

    if-gtz v4, :cond_2

    :cond_0
    const-string v6, "PrintSec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "captureScreen : Width or Height is too small -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->sendPrintIntent()V

    return-void

    :cond_2
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getScrollX()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, v1}, Lorg/chromium/content/browser/ContentView;->draw(Landroid/graphics/Canvas;)V

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->savePrintFile(Z)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private sconnectPrint()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.mobileprint.SCONNECT_PRINT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "PRINTER"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getPrinterInfo()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "Printing Page"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "Browser web content"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.DATA_REMOVED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getImgUris()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startPrinting()V
    .locals 4

    const-string v2, "PrintSec"

    const-string v3, "printPage : startPrinting "

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mState:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->showDialog(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$1;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public OnPrintBegin(II)V
    .locals 1

    iput p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mPageCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mCurPage:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->capturePrintBitmap()V

    return-void
.end method

.method public PrintBegin()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->PrintBegin()V

    const-string v0, "PrintSec"

    const-string v1, "Calling PaintBitmapForPrint "

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public capturePrintBitmap()V
    .locals 4

    const-string v1, "PrintSec"

    const-string v2, "start capturePrintBitmap"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mProgress:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mCurPage:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mPageCount:I

    if-ge v1, v2, :cond_3

    const-string v1, "PrintSec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capturePrintBitmap : curPage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mCurPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mState:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mState:I

    if-ne v1, v2, :cond_2

    :cond_0
    const-string v1, "PrintSec"

    const-string v2, "Printing is done or cancelled by user"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->printEnd()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mCurPage:I

    invoke-virtual {v1, v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->PrintPage(I)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mCurPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mCurPage:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mCurPage:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mPageCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mProgress:I

    const-string v1, "PrintSec"

    const-string v2, "Calling PrintPage "

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->isFromSconnect()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->sconnectPrint()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->printEnd()V

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mState:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->setState(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0c011a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->removeDialog(I)V

    return-void
.end method

.method public onCreateDialog()Landroid/app/ProgressDialog;
    .locals 4

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "PrintSec"

    const-string v2, "onCreateDialog : Called."

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v3, 0x7f0c011b

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "PrintSec"

    const-string v2, "onCreateDialog : NullPointerException"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public print()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->printDelayhandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public printBitmapReceived(IZ)V
    .locals 3

    const-string v1, "PrintSec"

    const-string v2, "SBROWSER_PRINT_BITMAP_RECEIVED"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$3;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$3;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public printEnd()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->PrintEnd()V

    const-string v0, "PrintSec"

    const-string v1, "Calling PrintEnd "

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public requestPrint()V
    .locals 2

    const-string v0, "PrintSec"

    const-string v1, "requestPrint : enter~!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->requestPrint(I)V

    return-void
.end method

.method requestPrint(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const-string v2, "Print"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PrintSec"

    const-string v2, "Failed to create print directory"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->deletePrintFile(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mImagePath:Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    const-string v1, "PrintSec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNEXPECTED type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->printScreen()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->startPrinting()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method requestPrintScreen()V
    .locals 2

    const-string v0, "PrintSec"

    const-string v1, "requestPrintScreen : enter~!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->requestPrint(I)V

    return-void
.end method

.method public savePrintFile(Z)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "PrintSec"

    const-string v1, "savePrintFile++"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const-string v0, "PrintSec"

    const-string v1, "unable to save bitmap, print cancelled"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0c00df

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->setState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mState:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mState:I

    if-ne v3, v0, :cond_0

    :cond_2
    const-string v0, "PrintSec"

    const-string v1, "savePrintFile Printing is done or cancelled by user"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendPrintIntent()V
    .locals 9

    const/4 v8, 0x1

    const-string v5, "PrintSec"

    const-string v6, "print Intent sending++"

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mImagePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "PrintSec"

    const-string v6, "requestPrint : captureScreen() failed"

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v6, 0x7f0c00df

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v8}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->setState(I)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "com.sec.android.app.mobileprint.PRINT"

    const-string v4, "SBrowser"

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.mobileprint.PRINT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.extra.STREAM"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "android.intent.extra.TITLE"

    const-string v6, "SBrowser"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.extra.SUBJECT"

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v6, 0x7f0c00e0

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const-string v5, "PrintSec"

    const-string v6, "requestPrint : There is no Print Activity"

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->setState(I)V

    goto :goto_0
.end method

.method public setState(I)V
    .locals 3

    iput p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mState:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mState:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->resetPrintProgressState(ZI)V

    return-void
.end method
