.class Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$2;
.super Ljava/lang/Object;
.source "TwRemoveUndoListAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$position:I

.field final synthetic val$viewForeground:Landroid/view/View;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;Landroid/view/View;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$2;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;

    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$2;->val$viewForeground:Landroid/view/View;

    iput p3, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$2;->val$width:I

    iput p4, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$2;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$2;->val$viewForeground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$2;->val$width:I

    int-to-float v2, v2

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$2;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;

    iget-object v1, v1, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$2;->val$position:I

    invoke-interface {v1, v2, v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;->onSweep(IF)V

    return-void
.end method
