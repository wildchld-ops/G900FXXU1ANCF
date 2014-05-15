.class Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$2;
.super Ljava/lang/Object;
.source "TwPaperLayoutController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->finishOverScrollMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$2;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$2;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$202(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
