.class Lorg/samsung/content/sbrowser/SbrContentViewCore$1;
.super Landroid/os/Handler;
.source "SbrContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/SbrContentViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/SbrContentViewCore;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$1;->this$0:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "SbrContentViewCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$1;->this$0:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    #getter for: Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->access$000(Lorg/samsung/content/sbrowser/SbrContentViewCore;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$1;->this$0:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    #getter for: Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->access$000(Lorg/samsung/content/sbrowser/SbrContentViewCore;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
