.class Lcom/samsung/contacts/impl/TutorialPopupView$1;
.super Ljava/lang/Object;
.source "TutorialPopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$1;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$1;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$000(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$1;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mOnIndicatorTouchListener:Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;
    invoke-static {v1}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$100(Lcom/samsung/contacts/impl/TutorialPopupView;)Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$1;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mOnIndicatorTouchListener:Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;
    invoke-static {v1}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$100(Lcom/samsung/contacts/impl/TutorialPopupView;)Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;->onTouch()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$1;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #calls: Lcom/samsung/contacts/impl/TutorialPopupView;->dispatchTouchEventToActivity(Landroid/view/MotionEvent;)V
    invoke-static {v1, p2}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$200(Lcom/samsung/contacts/impl/TutorialPopupView;Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$1;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$000(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$1;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mIgnoreTouchEventOutOfIndicator:Z
    invoke-static {v1}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$300(Lcom/samsung/contacts/impl/TutorialPopupView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$1;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$400(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView$1;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$400(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e048d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$1;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #calls: Lcom/samsung/contacts/impl/TutorialPopupView;->dispatchTouchEventToActivity(Landroid/view/MotionEvent;)V
    invoke-static {v1, p2}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$200(Lcom/samsung/contacts/impl/TutorialPopupView;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$1;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mIgnoreTouchEventOutOfIndicator:Z
    invoke-static {v1}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$300(Lcom/samsung/contacts/impl/TutorialPopupView;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$1;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #calls: Lcom/samsung/contacts/impl/TutorialPopupView;->dispatchTouchEventToActivity(Landroid/view/MotionEvent;)V
    invoke-static {v1, p2}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$200(Lcom/samsung/contacts/impl/TutorialPopupView;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method
