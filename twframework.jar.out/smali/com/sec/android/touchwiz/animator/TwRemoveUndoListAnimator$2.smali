.class Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$2;
.super Ljava/lang/Object;
.source "TwRemoveUndoListAnimator.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwiping:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemoveFg:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->animateRemoval(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$500(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/View;)V

    goto :goto_0
.end method
