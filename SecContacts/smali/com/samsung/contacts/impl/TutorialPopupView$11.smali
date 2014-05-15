.class Lcom/samsung/contacts/impl/TutorialPopupView$11;
.super Ljava/lang/Object;
.source "TutorialPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/impl/TutorialPopupView;->setPostionFromBottom(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

.field final synthetic val$bottomPadding:I


# direct methods
.method constructor <init>(Lcom/samsung/contacts/impl/TutorialPopupView;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$11;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    iput p2, p0, Lcom/samsung/contacts/impl/TutorialPopupView$11;->val$bottomPadding:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$11;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-virtual {v1}, Lcom/samsung/contacts/impl/TutorialPopupView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView$11;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mBubbleView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$1400(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView$11;->val$bottomPadding:I

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$11;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$000(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
