.class Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;
.super Ljava/lang/Object;
.source "TwDndListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwDndListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScrollRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndListView;Lcom/sec/android/touchwiz/widget/TwDndListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwDndListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->access$702(Lcom/sec/android/touchwiz/widget/TwDndListView;Z)Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAutoScrollMode:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->access$800(Lcom/sec/android/touchwiz/widget/TwDndListView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndListView;->mAutoScrollTopDelta:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->access$900(Lcom/sec/android/touchwiz/widget/TwDndListView;)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAutoScrollMode:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->access$800(Lcom/sec/android/touchwiz/widget/TwDndListView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndListView;->mAutoScrollBottomDelta:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->access$1000(Lcom/sec/android/touchwiz/widget/TwDndListView;)I

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1, v0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->trackMotionScroll(II)Z

    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwDndListView;->reorderIfNeeded()V
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->access$1100(Lcom/sec/android/touchwiz/widget/TwDndListView;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAutoScrollMode:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->access$800(Lcom/sec/android/touchwiz/widget/TwDndListView;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method
