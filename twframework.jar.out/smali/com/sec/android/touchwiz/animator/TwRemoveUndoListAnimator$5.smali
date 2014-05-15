.class Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwRemoveUndoListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->cancelRemoval(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$5;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    iput p2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$5;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$5;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$5;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$102(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$5;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemoveFg:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$402(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$5;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$5;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$5;->val$position:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;->onSweepEnd(IF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$5;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #calls: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->removeCachedBitmap()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)V

    return-void
.end method
