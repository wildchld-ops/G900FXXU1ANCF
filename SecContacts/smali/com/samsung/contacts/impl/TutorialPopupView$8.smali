.class Lcom/samsung/contacts/impl/TutorialPopupView$8;
.super Ljava/lang/Object;
.source "TutorialPopupView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/impl/TutorialPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$8;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    const/4 v2, 0x2

    new-array v0, v2, [I

    iget-object v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView$8;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mAnchor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$700(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v2, Lcom/samsung/contacts/impl/TutorialPopupView$13;->$SwitchMap$com$samsung$contacts$impl$HelpImpl$LAYOUT_TYPE:[I

    iget-object v3, p0, Lcom/samsung/contacts/impl/TutorialPopupView$8;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mLayoutType:Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;
    invoke-static {v3}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$800(Lcom/samsung/contacts/impl/TutorialPopupView;)Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView$8;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/impl/TutorialPopupView;->setBubbleAndIndicatorLeftPosition(I)V

    iget-object v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView$8;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$000(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView$8;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mAnchor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$700(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/contacts/impl/TutorialPopupView$8;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mCircleSize:I
    invoke-static {v3}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$900(Lcom/samsung/contacts/impl/TutorialPopupView;)I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView$8;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mAnchor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$700(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/samsung/contacts/impl/TutorialPopupView$8;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mCircleSize:I
    invoke-static {v3}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$900(Lcom/samsung/contacts/impl/TutorialPopupView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    :goto_1
    iget-object v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView$8;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    const/4 v3, 0x1

    aget v3, v0, v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView$8;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$000(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/impl/TutorialPopupView;->setTopPostion(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView$8;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mCircleSize:I
    invoke-static {v2}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$900(Lcom/samsung/contacts/impl/TutorialPopupView;)I

    move-result v1

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView$8;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #calls: Lcom/samsung/contacts/impl/TutorialPopupView;->setDynamicTopPosition()V
    invoke-static {v2}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$1000(Lcom/samsung/contacts/impl/TutorialPopupView;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
