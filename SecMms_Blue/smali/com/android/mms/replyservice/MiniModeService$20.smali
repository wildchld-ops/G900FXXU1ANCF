.class Lcom/android/mms/replyservice/MiniModeService$20;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/replyservice/MiniModeService;->initOverlayFrameWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field location:[I

.field mX:F

.field mY:F

.field originBodyHeight:I

.field originBodyWidth:I

.field originHeight:I

.field originWidth:I

.field final synthetic this$0:Lcom/android/mms/replyservice/MiniModeService;


# direct methods
.method constructor <init>(Lcom/android/mms/replyservice/MiniModeService;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/mms/replyservice/MiniModeService$20;->originWidth:I

    iput v0, p0, Lcom/android/mms/replyservice/MiniModeService$20;->originHeight:I

    iput v0, p0, Lcom/android/mms/replyservice/MiniModeService$20;->originBodyWidth:I

    iput v0, p0, Lcom/android/mms/replyservice/MiniModeService$20;->originBodyHeight:I

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService$20;->mX:F

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService$20;->mY:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$20;->location:[I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 26

    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v5, 0x1

    return v5

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHideResizeHandler:Ljava/lang/Runnable;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/replyservice/MiniModeService;->access$3700(Lcom/android/mms/replyservice/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHideOverlayTitleBar:Ljava/lang/Runnable;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/replyservice/MiniModeService;->access$3800(Lcom/android/mms/replyservice/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->mX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->mY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v5}, Lcom/android/mms/replyservice/MiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v5, v5, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v5}, Lcom/sec/android/app/minimode/MainView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->originWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v5, v5, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v5}, Lcom/sec/android/app/minimode/MainView;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->originHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$3900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->originBodyWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$3900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->originBodyHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$3900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->location:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/replyservice/MiniModeService;->access$4100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    #setter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5, v0}, Lcom/android/mms/replyservice/MiniModeService;->access$4002(Lcom/android/mms/replyservice/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$4000(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyView:Landroid/view/View;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/replyservice/MiniModeService;->access$3900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$4000(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyView:Landroid/view/View;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/replyservice/MiniModeService;->access$3900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$4100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/replyservice/MiniModeService;->access$4000(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$4200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->location:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->location:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$4200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v5

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v5}, Lcom/android/mms/replyservice/MiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->mX:F

    sub-float v5, v13, v5

    float-to-int v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->mY:F

    sub-float v5, v14, v5

    float-to-int v0, v5

    move/from16 v21, v0

    sget-object v5, Lcom/android/mms/replyservice/MiniModeService$24;->$SwitchMap$com$android$mms$replyservice$MiniModeService$Resizable:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mResizeDirection:Lcom/android/mms/replyservice/MiniModeService$Resizable;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/replyservice/MiniModeService;->access$3600(Lcom/android/mms/replyservice/MiniModeService;)Lcom/android/mms/replyservice/MiniModeService$Resizable;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/replyservice/MiniModeService$Resizable;->ordinal()I

    move-result v22

    aget v5, v5, v22

    packed-switch v5, :pswitch_data_1

    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->originWidth:I

    add-int v6, v5, v20

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->originHeight:I

    add-int v7, v5, v21

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->originBodyWidth:I

    add-int v8, v5, v20

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->originBodyHeight:I

    add-int v9, v5, v21

    if-lez v8, :cond_3

    if-lez v9, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mMinimumSize:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$4300(Lcom/android/mms/replyservice/MiniModeService;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mMinimumSize:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$4300(Lcom/android/mms/replyservice/MiniModeService;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mMaximumSize:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$4400(Lcom/android/mms/replyservice/MiniModeService;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mMaximumSize:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$4400(Lcom/android/mms/replyservice/MiniModeService;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v16

    const/4 v12, 0x0

    const/4 v11, 0x0

    if-eqz v19, :cond_7

    move/from16 v0, v19

    if-ge v8, v0, :cond_7

    sub-int v12, v8, v19

    :cond_1
    :goto_2
    sub-int/2addr v8, v12

    sub-int/2addr v6, v12

    if-eqz v18, :cond_8

    move/from16 v0, v18

    if-ge v9, v0, :cond_8

    sub-int v11, v9, v18

    :cond_2
    :goto_3
    sub-int/2addr v9, v11

    sub-int/2addr v7, v11

    new-instance v4, Lcom/android/mms/replyservice/MiniModeService$MoveParam;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/replyservice/MiniModeService$MoveParam;-><init>(Lcom/android/mms/replyservice/MiniModeService;IIII)V

    iput v6, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v7, v15, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$4200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x5

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_3
    const/4 v5, 0x1

    if-eq v10, v5, :cond_4

    const/4 v5, 0x3

    if-ne v10, v5, :cond_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyView:Landroid/view/View;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/replyservice/MiniModeService;->access$3900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    #setter for: Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5, v0}, Lcom/android/mms/replyservice/MiniModeService;->access$4502(Lcom/android/mms/replyservice/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$4500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$4500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$3900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/replyservice/MiniModeService;->access$4500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/mms/replyservice/MiniModeService;->access$4600()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mMinimizeFunctionRequested:Z
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$4700(Lcom/android/mms/replyservice/MiniModeService;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$2300(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/replyservice/MiniModeService;->access$2300(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    #setter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5, v0}, Lcom/android/mms/replyservice/MiniModeService;->access$4802(Lcom/android/mms/replyservice/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$4800(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$2300(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/replyservice/MiniModeService;->access$4800(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$1800(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->invalidate()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v5, v15}, Lcom/android/mms/replyservice/MiniModeService;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->mX:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->mY:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->originWidth:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->originHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$4200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$4200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v5

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHideResizeHandler:Ljava/lang/Runnable;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/replyservice/MiniModeService;->access$3700(Lcom/android/mms/replyservice/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/mms/replyservice/MiniModeService;->RESIZE_HANDLER_SHOW_TIMEOUT:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/replyservice/MiniModeService;->mHideOverlayTitleBar:Ljava/lang/Runnable;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/replyservice/MiniModeService;->access$3800(Lcom/android/mms/replyservice/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/replyservice/MiniModeService$20;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/mms/replyservice/MiniModeService;->MINIMIZED_TITLE_BAR_SHOW_TIMEOUT:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :pswitch_2
    const/16 v20, 0x0

    goto/16 :goto_1

    :pswitch_3
    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_7
    if-eqz v17, :cond_1

    move/from16 v0, v17

    if-le v8, v0, :cond_1

    sub-int v12, v8, v17

    goto/16 :goto_2

    :cond_8
    if-eqz v16, :cond_2

    move/from16 v0, v16

    if-le v9, v0, :cond_2

    sub-int v11, v9, v16

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
