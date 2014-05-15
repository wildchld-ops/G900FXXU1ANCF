.class Lcom/sec/android/touchwiz/widget/TwDndListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwDndListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwDndListView;->onTouchUpCancel(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->access$200(Lcom/sec/android/touchwiz/widget/TwDndListView;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->access$300(Lcom/sec/android/touchwiz/widget/TwDndListView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->access$400(Lcom/sec/android/touchwiz/widget/TwDndListView;)Lcom/sec/android/touchwiz/widget/TwDndController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->access$200(Lcom/sec/android/touchwiz/widget/TwDndListView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->access$300(Lcom/sec/android/touchwiz/widget/TwDndListView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeAll()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwDndListView;->resetDndState()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->access$500(Lcom/sec/android/touchwiz/widget/TwDndListView;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->access$600(Lcom/sec/android/touchwiz/widget/TwDndListView;)Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "TwDndListView"

    const-string v1, "dndListener.OnDragAndDropStop() from AnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->access$600(Lcom/sec/android/touchwiz/widget/TwDndListView;)Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;->OnDragAndDropStop()V

    :cond_1
    return-void
.end method
