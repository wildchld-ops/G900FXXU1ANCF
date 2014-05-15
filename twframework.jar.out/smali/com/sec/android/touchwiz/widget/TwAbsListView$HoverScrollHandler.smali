.class Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x4

    const v8, 0x3ecccccd

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-int v5, v5

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6002(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x3e8

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6102(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollTimeInterval:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-le v4, v7, :cond_3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-ge v4, v9, :cond_3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6502(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-ne v4, v7, :cond_6

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    mul-int/lit8 v1, v4, -0x1

    :goto_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x438

    if-lt v4, v5, :cond_1

    mul-int/lit8 v1, v1, 0x2

    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    if-gez v1, :cond_7

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v4, v5, :cond_7

    :cond_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, v1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-lt v4, v9, :cond_4

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6502(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_5

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6502(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    goto/16 :goto_1

    :cond_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6502(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    goto/16 :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    mul-int/lit8 v1, v4, 0x1

    goto/16 :goto_2

    :cond_7
    if-lez v1, :cond_9

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-eq v4, v5, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, v1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getOverScrollMode()I

    move-result v2

    if-eqz v2, :cond_a

    if-ne v2, v3, :cond_b

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    move v0, v3

    :cond_b
    if-eqz v0, :cond_f

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$7000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-ne v4, v7, :cond_10

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    :cond_c
    :goto_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    :cond_e
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v4, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$7002(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)Z

    :cond_f
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$7000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v4, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$7002(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)Z

    goto/16 :goto_0

    :cond_10
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-ne v4, v3, :cond_c

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
