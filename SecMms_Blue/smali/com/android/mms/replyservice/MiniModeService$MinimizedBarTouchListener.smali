.class public Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;
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
    name = "MinimizedBarTouchListener"
.end annotation


# instance fields
.field protected MODULE_TAG:Ljava/lang/String;

.field private mPosX:I

.field private mPosY:I

.field final synthetic this$0:Lcom/android/mms/replyservice/MiniModeService;


# direct methods
.method protected constructor <init>(Lcom/android/mms/replyservice/MiniModeService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MinimizedBarTouchListener"

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->MODULE_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v7, 0x1

    return v7

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->mPosX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->mPosY:I

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #calls: Lcom/android/mms/replyservice/MiniModeService;->startDrag()V
    invoke-static {v7}, Lcom/android/mms/replyservice/MiniModeService;->access$2500(Lcom/android/mms/replyservice/MiniModeService;)V

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mStartDrag:Z
    invoke-static {v7}, Lcom/android/mms/replyservice/MiniModeService;->access$2600(Lcom/android/mms/replyservice/MiniModeService;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v5, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v6, v7

    iget v7, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->mPosX:I

    sub-int v1, v5, v7

    iget v7, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->mPosY:I

    sub-int v2, v6, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget v8, v8, Lcom/android/mms/replyservice/MiniModeService;->X_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

    if-gt v7, v8, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget v8, v8, Lcom/android/mms/replyservice/MiniModeService;->Y_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

    if-le v7, v8, :cond_0

    :cond_1
    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v7, v7, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v3, v7, v1

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v7, v7, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v4, v7, v2

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v7, v7, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v7, v7, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v7}, Lcom/android/mms/replyservice/MiniModeService;->access$900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/Window;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v8, v8, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iput v5, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->mPosX:I

    iput v6, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->mPosY:I

    goto :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #calls: Lcom/android/mms/replyservice/MiniModeService;->endDrag()V
    invoke-static {v7}, Lcom/android/mms/replyservice/MiniModeService;->access$2700(Lcom/android/mms/replyservice/MiniModeService;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
