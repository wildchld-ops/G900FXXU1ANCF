.class Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwRemoveUndoListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->onActionUp(Landroid/view/MotionEvent;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;

.field final synthetic val$endX:F

.field final synthetic val$position:I

.field final synthetic val$remove:Z

.field final synthetic val$viewForeground:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;ZLandroid/view/View;IF)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;

    iput-boolean p2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;->val$remove:Z

    iput-object p3, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;->val$viewForeground:Landroid/view/View;

    iput p4, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;->val$position:I

    iput p5, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;->val$endX:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwiping:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$302(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    const/4 v1, -0x1

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwipingPosition:I
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1002(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)I

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;->val$remove:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;->val$viewForeground:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;->val$position:I

    #calls: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->pendingItemRemoval(Landroid/view/View;I)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;->val$position:I

    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;->val$endX:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;->onSweepEnd(IF)V

    :cond_1
    return-void
.end method
