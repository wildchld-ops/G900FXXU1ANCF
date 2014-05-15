.class Lcom/samsung/contacts/impl/TutorialPopupView$12;
.super Ljava/lang/Object;
.source "TutorialPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/impl/TutorialPopupView;->setDynamicTopPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/impl/TutorialPopupView;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/impl/TutorialPopupView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$12;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/contacts/impl/TutorialPopupView$12;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #calls: Lcom/samsung/contacts/impl/TutorialPopupView;->getDefaultDisplayMetrics()Landroid/util/DisplayMetrics;
    invoke-static {v6}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$1500(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v7, p0, Lcom/samsung/contacts/impl/TutorialPopupView$12;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-virtual {v7}, Lcom/samsung/contacts/impl/TutorialPopupView;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v3, v6, v7

    const/4 v1, 0x0

    const/4 v6, 0x2

    new-array v2, v6, [I

    iget-object v6, p0, Lcom/samsung/contacts/impl/TutorialPopupView$12;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mAnchor:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$700(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v6, p0, Lcom/samsung/contacts/impl/TutorialPopupView$12;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mAnchor:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$700(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/samsung/contacts/impl/TutorialPopupView$12;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mCircleSize:I
    invoke-static {v7}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$900(Lcom/samsung/contacts/impl/TutorialPopupView;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sget-object v6, Lcom/samsung/contacts/impl/TutorialPopupView$13;->$SwitchMap$com$samsung$contacts$impl$HelpImpl$LAYOUT_TYPE:[I

    iget-object v7, p0, Lcom/samsung/contacts/impl/TutorialPopupView$12;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mLayoutType:Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;
    invoke-static {v7}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$800(Lcom/samsung/contacts/impl/TutorialPopupView;)Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v6, p0, Lcom/samsung/contacts/impl/TutorialPopupView$12;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mBubbleView:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$1400(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v4

    const/4 v6, 0x3

    aget v6, v4, v6

    const v7, 0x7f0802e7

    if-ne v6, v7, :cond_0

    aget v6, v2, v9

    add-int/2addr v6, v5

    sub-int v1, v6, v3

    :goto_1
    iget-object v6, p0, Lcom/samsung/contacts/impl/TutorialPopupView$12;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$1600(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8, v1, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    aget v6, v2, v9

    add-int/2addr v6, v5

    iget-object v7, p0, Lcom/samsung/contacts/impl/TutorialPopupView$12;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mBubbleView:Landroid/view/View;
    invoke-static {v7}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$1400(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v1, v6, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
