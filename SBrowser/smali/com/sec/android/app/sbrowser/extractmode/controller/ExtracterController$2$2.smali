.class Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$2;
.super Landroid/os/Handler;
.source "ExtracterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$2;->this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;

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
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$2;->this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$100(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->setToastForSavedImage()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$2;->this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$600(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$2;->this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$600(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$2;->this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$600(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$2;->this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$100(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->setToastForAlreadySavedImage()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$2;->this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$600(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$2;->this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$600(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$2;->this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$600(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$2;->this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mUi:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$100(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;->setToastForMemoryFull()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$2;->this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$600(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$2;->this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$600(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2$2;->this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$2;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$600(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)Landroid/graphics/Bitmap;

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
