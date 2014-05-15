.class Lcom/android/mms/replyservice/MiniModeService$21;
.super Landroid/os/Handler;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/replyservice/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/replyservice/MiniModeService;


# direct methods
.method constructor <init>(Lcom/android/mms/replyservice/MiniModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v6, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v0, :cond_1

    :goto_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #calls: Lcom/android/mms/replyservice/MiniModeService;->getComponentName()Landroid/content/ComponentName;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$800(Lcom/android/mms/replyservice/MiniModeService;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v6}, Lcom/android/mms/replyservice/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v7}, Lcom/android/mms/replyservice/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v7

    #calls: Lcom/android/mms/replyservice/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/mms/replyservice/MiniModeService$Vec2D;
    invoke-static {v6, v7}, Lcom/android/mms/replyservice/MiniModeService;->access$1400(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    iget v8, v5, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->x:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    iget v8, v5, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->y:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$1000(Lcom/android/mms/replyservice/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v7, v7, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v8, v8, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    goto :goto_1

    :cond_1
    move v0, v6

    goto :goto_2

    :pswitch_1
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/replyservice/MiniModeService;->move(II)V

    goto :goto_1

    :pswitch_2
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    #setter for: Lcom/android/mms/replyservice/MiniModeService;->mOldDecorViewWidth:I
    invoke-static {v6, v7}, Lcom/android/mms/replyservice/MiniModeService;->access$302(Lcom/android/mms/replyservice/MiniModeService;I)I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #setter for: Lcom/android/mms/replyservice/MiniModeService;->mOldDecorViewHeight:I
    invoke-static {v6, v7}, Lcom/android/mms/replyservice/MiniModeService;->access$402(Lcom/android/mms/replyservice/MiniModeService;I)I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v6}, Lcom/sec/android/app/minimode/MainView;->invalidate()V

    goto/16 :goto_1

    :pswitch_3
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    const/4 v7, 0x7

    #calls: Lcom/android/mms/replyservice/MiniModeService;->handleClose(I)V
    invoke-static {v6, v7}, Lcom/android/mms/replyservice/MiniModeService;->access$000(Lcom/android/mms/replyservice/MiniModeService;I)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v6}, Lcom/android/mms/replyservice/MiniModeService;->show()V

    goto/16 :goto_1

    :pswitch_5
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v6}, Lcom/android/mms/replyservice/MiniModeService;->hide()V

    goto/16 :goto_1

    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/mms/replyservice/MiniModeService$MoveParam;

    const/4 v7, 0x2

    new-array v1, v7, [I

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/mms/replyservice/MiniModeService;->access$200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$4100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    #setter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v7, v8}, Lcom/android/mms/replyservice/MiniModeService;->access$4002(Lcom/android/mms/replyservice/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v7}, Lcom/android/mms/replyservice/MiniModeService;->access$4000(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v8, v3, Lcom/android/mms/replyservice/MiniModeService$MoveParam;->bodyViewWidth:I

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v7}, Lcom/android/mms/replyservice/MiniModeService;->access$4000(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v8, v3, Lcom/android/mms/replyservice/MiniModeService$MoveParam;->bodyViewHeight:I

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;
    invoke-static {v7}, Lcom/android/mms/replyservice/MiniModeService;->access$4100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$4000(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;
    invoke-static {v7}, Lcom/android/mms/replyservice/MiniModeService;->access$4200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v7

    aget v8, v1, v6

    aget v9, v1, v0

    invoke-virtual {v7, v8, v9, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$21;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$4200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
