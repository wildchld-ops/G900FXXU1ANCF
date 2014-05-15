.class Lcom/samsung/contacts/impl/TutorialPopupView$7;
.super Ljava/lang/Object;
.source "TutorialPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$7;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView$7;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mOnIndicatorTouchListenerSecond:Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;
    invoke-static {v0}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$600(Lcom/samsung/contacts/impl/TutorialPopupView;)Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView$7;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mOnIndicatorTouchListenerSecond:Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;
    invoke-static {v0}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$600(Lcom/samsung/contacts/impl/TutorialPopupView;)Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;->onTouch()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView$7;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$000(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
