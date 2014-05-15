.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwSmoothScrollByMove"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    move-result-object v1

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->access$1600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;)Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3900(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3900(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3900(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(IIZ)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$TwSmoothScrollByMove;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
