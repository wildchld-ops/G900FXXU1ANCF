.class Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;
.super Landroid/os/Handler;
.source "SbrSelectionHandleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/SbrSelectionHandleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const-string v0, "SelectionHandleConroller"

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

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->hide()V

    :cond_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mParent:Landroid/view/View;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$000(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isContextMenuIsShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->isTextSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lorg/samsung/content/sbrowser/SelectionZoomer;->show(II)V

    :cond_3
    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getKikinSelectionHandler()Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->ensureZoomerDoesNotOverlapKikin()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    iget-boolean v0, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mbShow:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$100(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SelectionZoomer;->hide()V

    :cond_4
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->isTextSelected()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isAccessibilityTalkBackisEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->hide()V

    :cond_6
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->show()V

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getKikinSelectionHandler()Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->ensureSelectionActionPopupDoesNotOverlapKikin()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
