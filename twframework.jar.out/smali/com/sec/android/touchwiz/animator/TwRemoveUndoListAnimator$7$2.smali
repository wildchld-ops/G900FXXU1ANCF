.class Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$2;
.super Ljava/lang/Object;
.source "TwRemoveUndoListAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$2;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$2;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;

    iget-object v1, v1, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mDeletingItemBitmap:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2600(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    const/high16 v2, 0x437f

    const/high16 v3, 0x3f80

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$2;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;

    iget-object v1, v1, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$2;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;

    iget-object v2, v2, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mDeletingItemBitmap:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2600(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
