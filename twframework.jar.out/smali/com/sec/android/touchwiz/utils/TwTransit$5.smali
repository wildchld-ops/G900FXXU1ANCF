.class Lcom/sec/android/touchwiz/utils/TwTransit$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwTransit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/utils/TwTransit;->startInternalOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/utils/TwTransit;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/utils/TwTransit;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit$5;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$5;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/touchwiz/utils/TwTransit;->mIsCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/utils/TwTransit;->access$402(Lcom/sec/android/touchwiz/utils/TwTransit;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$5;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$5;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    #getter for: Lcom/sec/android/touchwiz/utils/TwTransit;->mWindowLayoutOut:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/android/touchwiz/utils/TwTransit;->access$500(Lcom/sec/android/touchwiz/utils/TwTransit;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$5;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    #calls: Lcom/sec/android/touchwiz/utils/TwTransit;->isValidActivity()Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/utils/TwTransit;->access$600(Lcom/sec/android/touchwiz/utils/TwTransit;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$5;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit$5;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    #getter for: Lcom/sec/android/touchwiz/utils/TwTransit;->mWindowLayoutOut:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sec/android/touchwiz/utils/TwTransit;->access$500(Lcom/sec/android/touchwiz/utils/TwTransit;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
