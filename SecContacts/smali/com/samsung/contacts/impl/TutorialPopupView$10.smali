.class Lcom/samsung/contacts/impl/TutorialPopupView$10;
.super Ljava/lang/Object;
.source "TutorialPopupView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/impl/TutorialPopupView;
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

    iput-object p1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$10;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView$10;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-static {v0}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$1108(Lcom/samsung/contacts/impl/TutorialPopupView;)I

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView$10;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mCurrentPointAnimation:I
    invoke-static {v0}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$1100(Lcom/samsung/contacts/impl/TutorialPopupView;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView$10;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimations:Ljava/util/List;
    invoke-static {v1}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$1200(Lcom/samsung/contacts/impl/TutorialPopupView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView$10;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicator:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$1300(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView$10;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimations:Ljava/util/List;
    invoke-static {v0}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$1200(Lcom/samsung/contacts/impl/TutorialPopupView;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView$10;->this$0:Lcom/samsung/contacts/impl/TutorialPopupView;

    #getter for: Lcom/samsung/contacts/impl/TutorialPopupView;->mCurrentPointAnimation:I
    invoke-static {v2}, Lcom/samsung/contacts/impl/TutorialPopupView;->access$1100(Lcom/samsung/contacts/impl/TutorialPopupView;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
