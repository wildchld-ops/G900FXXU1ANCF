.class Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;
.super Ljava/lang/Object;
.source "TwRemoveUndoListAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->animateRemoval(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/ViewTreeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v14}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->val$observer:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v14}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v11

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v14}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v14

    invoke-virtual {v14, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v14}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v14

    add-int v15, v7, v6

    invoke-interface {v14, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemIdTopMap:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Ljava/util/HashMap;

    move-result-object v14

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v13

    new-instance v10, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$1;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;)V

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v14, v13, :cond_0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int v4, v14, v13

    int-to-float v14, v4

    invoke-virtual {v2, v14}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    const-wide/16 v15, 0x96

    invoke-virtual/range {v14 .. v16}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2500()Landroid/view/animation/Interpolator;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 v5, 0x0

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v15}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v15

    add-int v3, v14, v15

    if-lez v7, :cond_2

    :goto_2
    add-int v14, v13, v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int v4, v14, v13

    int-to-float v14, v4

    invoke-virtual {v2, v14}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    const-wide/16 v15, 0x96

    invoke-virtual/range {v14 .. v16}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2500()Landroid/view/animation/Interpolator;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    neg-int v3, v3

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_0

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v14, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$2;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;)V

    invoke-virtual {v1, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2500()Landroid/view/animation/Interpolator;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v14, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$3;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;)V

    invoke-virtual {v1, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v14, 0x96

    invoke-virtual {v1, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemIdTopMap:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    const/4 v14, 0x1

    return v14

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
