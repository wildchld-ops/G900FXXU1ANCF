.class Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$3;
.super Ljava/lang/Object;
.source "TwRemoveUndoListAnimator.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;


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

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V
    .locals 3

    add-int v1, p2, p3

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mCurrentFirstVisiblePos:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$600(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mCurrentLastVisiblePos:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$700(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemovePosition:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$800(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v1

    if-gt v1, v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemovePosition:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$800(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v1

    if-ge v1, p2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemoveFg:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemoveFg:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/view/View;

    move-result-object v2

    #calls: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->showForeground(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$900(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$102(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z

    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mCurrentFirstVisiblePos:I
    invoke-static {v1, p2}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$602(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)I

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mCurrentLastVisiblePos:I
    invoke-static {v1, v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$702(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)I

    :cond_3
    return-void
.end method

.method public onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V
    .locals 0

    return-void
.end method
