.class public Lcom/android/mms/replyservice/MiniModeService$TouchListener;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/replyservice/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchListener"
.end annotation


# instance fields
.field protected MODULE_TAG:Ljava/lang/String;

.field private mPosX:I

.field private mPosY:I

.field final synthetic this$0:Lcom/android/mms/replyservice/MiniModeService;


# direct methods
.method protected constructor <init>(Lcom/android/mms/replyservice/MiniModeService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[TouchListener]"

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->MODULE_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v12

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->mPosX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->mPosY:I

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #calls: Lcom/android/mms/replyservice/MiniModeService;->startDrag()V
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$2500(Lcom/android/mms/replyservice/MiniModeService;)V

    invoke-static {}, Lcom/android/mms/replyservice/MiniModeService;->access$4600()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mMinimizeFunctionRequested:Z
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$4700(Lcom/android/mms/replyservice/MiniModeService;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$2300(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mIsMinimized:Z
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$2800(Lcom/android/mms/replyservice/MiniModeService;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$3900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v9, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/android/mms/replyservice/MiniModeService;->access$2300(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    #setter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v8, v9}, Lcom/android/mms/replyservice/MiniModeService;->access$4802(Lcom/android/mms/replyservice/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$4800(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$2300(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v9}, Lcom/android/mms/replyservice/MiniModeService;->access$4800(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHideOverlayTitleBar:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/mms/replyservice/MiniModeService;->access$3800(Lcom/android/mms/replyservice/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$2300(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #setter for: Lcom/android/mms/replyservice/MiniModeService;->mIsOverlayTitleBarShown:Z
    invoke-static {v8, v12}, Lcom/android/mms/replyservice/MiniModeService;->access$2402(Lcom/android/mms/replyservice/MiniModeService;Z)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mStartDrag:Z
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$2600(Lcom/android/mms/replyservice/MiniModeService;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v6, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v7, v8

    iget v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->mPosX:I

    sub-int v2, v6, v8

    iget v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->mPosY:I

    sub-int v3, v7, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget v9, v9, Lcom/android/mms/replyservice/MiniModeService;->X_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

    if-gt v8, v9, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget v9, v9, Lcom/android/mms/replyservice/MiniModeService;->Y_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

    if-le v8, v9, :cond_0

    :cond_2
    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v8, v8, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v4, v8, v2

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v8, v8, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v5, v8, v3

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v8, v8, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v8, v8, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/Window;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v9, v9, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iput v6, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->mPosX:I

    iput v7, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->mPosY:I

    goto/16 :goto_0

    :pswitch_2
    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #calls: Lcom/android/mms/replyservice/MiniModeService;->endDrag()V
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$2700(Lcom/android/mms/replyservice/MiniModeService;)V

    invoke-static {}, Lcom/android/mms/replyservice/MiniModeService;->access$4600()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mMinimizeFunctionRequested:Z
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$4700(Lcom/android/mms/replyservice/MiniModeService;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mIsMinimized:Z
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$2800(Lcom/android/mms/replyservice/MiniModeService;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHideOverlayTitleBar:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/mms/replyservice/MiniModeService;->access$3800(Lcom/android/mms/replyservice/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHideOverlayTitleBar:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/mms/replyservice/MiniModeService;->access$3800(Lcom/android/mms/replyservice/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget v10, v10, Lcom/android/mms/replyservice/MiniModeService;->MINIMIZED_TITLE_BAR_SHOW_TIMEOUT:I

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
