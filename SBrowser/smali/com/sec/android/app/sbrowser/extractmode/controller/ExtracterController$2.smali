.class Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;
.super Lorg/samsung/content/sbrowser/SbrContentViewClient;
.source "ExtracterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hSavedReader:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrContentViewClient;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$2;-><init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->hSavedReader:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public SelectedBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public findOnPage(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewClient;->findOnPage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$100(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->findOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public onBitmapForScrap(Landroid/graphics/Bitmap;Z)V
    .locals 6

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$100(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->setSavedPageToast()V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$602(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$1;-><init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
