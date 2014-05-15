.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;
.super Ljava/lang/Object;
.source "MultiTabAnimations.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->resetDragAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabThumbnailViewID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$1;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$1;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setmSelectedView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    sget-object v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setmOperationState(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;)V

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
