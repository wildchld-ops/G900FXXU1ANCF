.class Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwHorizontalDndListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->onTouchUpCancel(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->mFirstDragPos:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->mDragPos:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->access$200(Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;)Lcom/sec/android/touchwiz/widget/TwDndController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->mFirstDragPos:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->mDragPos:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->access$200(Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->removeAll()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->resetDndState()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->access$400(Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$TwDndListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->access$500(Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$TwDndListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "TwHorizontalDndListView"

    const-string v1, "dndListener.OnDragAndDropStop() from AnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$TwDndListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->access$500(Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$TwDndListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$TwDndListener;->OnDragAndDropStop()V

    :cond_1
    return-void
.end method
