.class Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$1;
.super Ljava/lang/Object;
.source "TwCoverflowLayoutController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->finishOverScrollMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    #setter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$202(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;Z)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    #setter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnAnimation:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$102(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnAnimation:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$102(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;Z)Z

    return-void
.end method
