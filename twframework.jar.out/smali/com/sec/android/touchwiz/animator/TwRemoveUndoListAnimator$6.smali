.class Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$6;
.super Ljava/lang/Object;
.source "TwRemoveUndoListAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$6;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    iput p2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$6;->val$width:I

    iput p3, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$6;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$6;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemoveFg:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$6;->val$width:I

    int-to-float v2, v2

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$6;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$6;->val$position:I

    invoke-interface {v1, v2, v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;->onSweep(IF)V

    return-void
.end method
