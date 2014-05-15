.class Lcom/sec/android/touchwiz/utils/TwTransit$3;
.super Ljava/lang/Object;
.source "TwTransit.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/utils/TwTransit;->composeAnimatorSetIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/utils/TwTransit;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iput-object p2, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->val$contentView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->val$contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    #getter for: Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapIn:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/android/touchwiz/utils/TwTransit;->access$300(Lcom/sec/android/touchwiz/utils/TwTransit;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    #getter for: Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapIn:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/android/touchwiz/utils/TwTransit;->access$300(Lcom/sec/android/touchwiz/utils/TwTransit;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    #getter for: Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapIn:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/android/touchwiz/utils/TwTransit;->access$300(Lcom/sec/android/touchwiz/utils/TwTransit;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    #getter for: Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapIn:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/android/touchwiz/utils/TwTransit;->access$300(Lcom/sec/android/touchwiz/utils/TwTransit;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v3, v3, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    new-array v4, v8, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v6, v6, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v6, v2, v0}, Lcom/sec/android/touchwiz/utils/TwTransit;->createMainViewAnimatorIn(Landroid/app/Activity;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/utils/TwTransit;->needToCreateOverlayWindowIn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v3, v3, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    new-array v4, v8, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v6, v6, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    #getter for: Lcom/sec/android/touchwiz/utils/TwTransit;->mWindowLayoutIn:Landroid/widget/FrameLayout;
    invoke-static {v7}, Lcom/sec/android/touchwiz/utils/TwTransit;->access$100(Lcom/sec/android/touchwiz/utils/TwTransit;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2, v0}, Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayViewAnimatorIn(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v3, v3, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    new-array v4, v8, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v6, v6, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/utils/TwTransit;->createMainWindowAnimatorIn(Landroid/app/Activity;)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/utils/TwTransit;->needToCreateOverlayWindowIn()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v3, v3, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    new-array v4, v8, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v6, v6, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/sec/android/touchwiz/utils/TwTransit$3;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    #getter for: Lcom/sec/android/touchwiz/utils/TwTransit;->mWindowLayoutIn:Landroid/widget/FrameLayout;
    invoke-static {v7}, Lcom/sec/android/touchwiz/utils/TwTransit;->access$100(Lcom/sec/android/touchwiz/utils/TwTransit;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayWindowAnimatorIn(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2
    return v8
.end method
