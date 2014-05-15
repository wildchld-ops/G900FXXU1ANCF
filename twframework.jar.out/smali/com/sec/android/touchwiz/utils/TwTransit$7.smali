.class Lcom/sec/android/touchwiz/utils/TwTransit$7;
.super Ljava/lang/Object;
.source "TwTransit.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/utils/TwTransit;->startInternalIn()V
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

    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit$7;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iput-object p2, p0, Lcom/sec/android/touchwiz/utils/TwTransit$7;->val$contentView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$7;->val$contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$7;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$7;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$7;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/sec/android/touchwiz/utils/TwTransit$7$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/utils/TwTransit$7$1;-><init>(Lcom/sec/android/touchwiz/utils/TwTransit$7;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$7;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    #getter for: Lcom/sec/android/touchwiz/utils/TwTransit;->mReverseAnimationEnabled:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/utils/TwTransit;->access$700(Lcom/sec/android/touchwiz/utils/TwTransit;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$7;->val$contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/touchwiz/utils/TwTransit$7$2;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/utils/TwTransit$7$2;-><init>(Lcom/sec/android/touchwiz/utils/TwTransit$7;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$7;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
