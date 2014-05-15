.class Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;
.super Ljava/lang/Object;
.source "SplitRatioController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SplitRatioController;->configureSplitBarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SplitRatioController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;->this$0:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;->this$0:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    #getter for: Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSplitBar:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->access$000(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;->this$0:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    #getter for: Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mFocusedSplitBar:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->access$100(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;->this$0:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    #getter for: Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mListener:Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->access$200(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;->START_CHANGING_SPLIT_RATIO:Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;->onOperation(Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;->this$0:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    #calls: Lcom/sec/android/app/sbrowser/common/SplitRatioController;->setLeftPaneWidth(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->access$300(Lcom/sec/android/app/sbrowser/common/SplitRatioController;I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;->this$0:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    #getter for: Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSplitBar:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->access$000(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;->this$0:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    #calls: Lcom/sec/android/app/sbrowser/common/SplitRatioController;->getCurrentOrientation()I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->access$400(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;->this$0:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    #getter for: Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSavedLeftPaneWidthPortrait:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->access$500(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;->this$0:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    #getter for: Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mFocusedSplitBar:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->access$100(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;->this$0:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    #getter for: Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mFocusedSplitBar:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->access$100(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;->this$0:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    #getter for: Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mListener:Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->access$200(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;->STOP_CHANGING_SPLIT_RATIO:Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;->onOperation(Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;->this$0:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    #getter for: Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSavedLeftPaneWidthLandscape:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->access$600(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;->this$0:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    #getter for: Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mFocusedSplitBar:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->access$100(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;->this$0:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    #getter for: Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mFocusedSplitBar:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->access$100(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
