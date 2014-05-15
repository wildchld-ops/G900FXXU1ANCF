.class Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "TwScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwScrollView;Lcom/sec/android/touchwiz/widget/TwScrollView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwScrollView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v10, 0x4

    const v9, 0x3ecccccd

    const/4 v8, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #calls: Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$100(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    #setter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$202(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$200(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$400(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x3e8

    #setter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$302(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$200(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$500(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollTimeInterval:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$600(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    if-le v5, v8, :cond_2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    if-ge v5, v10, :cond_2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    #setter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$702(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I

    :goto_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    if-ne v5, v8, :cond_5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$700(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    mul-int/lit8 v1, v5, -0x1

    :goto_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x438

    if-lt v5, v6, :cond_1

    mul-int/lit8 v1, v1, 0x2

    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    if-gez v1, :cond_6

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1000(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_DELAY:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    if-lt v5, v10, :cond_3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    #setter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$702(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    #setter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$702(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    #setter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$702(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I

    goto/16 :goto_1

    :cond_5
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$700(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    mul-int/lit8 v1, v5, 0x1

    goto/16 :goto_2

    :cond_6
    if-lez v1, :cond_7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    if-ge v5, v3, :cond_7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_DELAY:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getOverScrollMode()I

    move-result v2

    if-eqz v2, :cond_8

    if-ne v2, v4, :cond_9

    if-lez v3, :cond_9

    :cond_8
    move v0, v4

    :cond_9
    if-eqz v0, :cond_d

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1400(Lcom/sec/android/touchwiz/widget/TwScrollView;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    if-ne v5, v8, :cond_e

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    :cond_a
    :goto_3
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    :cond_c
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #setter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1402(Lcom/sec/android/touchwiz/widget/TwScrollView;Z)Z

    :cond_d
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1400(Lcom/sec/android/touchwiz/widget/TwScrollView;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #setter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1402(Lcom/sec/android/touchwiz/widget/TwScrollView;Z)Z

    goto/16 :goto_0

    :cond_e
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    if-ne v5, v4, :cond_a

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
