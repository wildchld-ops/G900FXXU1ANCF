.class Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwRemoveUndoListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$3;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$3;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$3;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$102(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$3;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #calls: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->removeCachedBitmap()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)V

    return-void
.end method
