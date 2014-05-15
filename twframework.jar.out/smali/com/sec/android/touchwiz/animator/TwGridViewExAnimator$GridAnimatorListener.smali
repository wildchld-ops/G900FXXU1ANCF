.class Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;
.super Ljava/lang/Object;
.source "TwGridViewExAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;-><init>(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->getCurrentPlayTime()J

    move-result-wide v3

    long-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v3, v4

    #setter for: Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentProgress:F
    invoke-static {v2, v3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->access$102(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;F)F

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    #setter for: Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentValuef:F
    invoke-static {v2, v0}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->access$202(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;F)F

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mAniType:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->access$300(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mIsNeedToInavalidate:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->access$500(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mTargetView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mTargetView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mTargetView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mTargetView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mTargetView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mTargetView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mTargetView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    float-to-int v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mTargetView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mTargetView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    float-to-int v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mTargetView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mTargetView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Landroid/view/View;

    move-result-object v2

    float-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setRight(I)V

    goto :goto_0

    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;->this$0:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mTargetView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Landroid/view/View;

    move-result-object v2

    float-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBottom(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
