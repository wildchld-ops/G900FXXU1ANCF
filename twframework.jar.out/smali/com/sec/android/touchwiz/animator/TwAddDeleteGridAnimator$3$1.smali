.class Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwAddDeleteGridAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/widget/TwGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/widget/TwGridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$500(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$500(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;->onAnimationEnd(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/widget/TwGridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$500(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$500(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;->onAnimationStart(Z)V

    :cond_0
    return-void
.end method
