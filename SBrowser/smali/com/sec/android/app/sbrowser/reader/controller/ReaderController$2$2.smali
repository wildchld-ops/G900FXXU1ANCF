.class Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$2;
.super Landroid/os/Handler;
.source "ReaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$2;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$2;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mUi:Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$100(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;->setToastForSavedImage()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$2;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$600(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$2;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$600(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$2;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$600(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$2;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mUi:Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$100(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;->setToastForAlreadySavedImage()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$2;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$600(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$2;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$600(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$2;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$600(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$2;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mUi:Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$100(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;->setToastForMemoryFull()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$2;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$600(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$2;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$600(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$2;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$600(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
