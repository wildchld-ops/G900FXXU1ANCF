.class Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$1;
.super Ljava/lang/Object;
.source "TwRemoveUndoListAnimator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #calls: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->cancelRemoval(I)V
    invoke-static {v1, v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)V

    :cond_0
    return-void
.end method
