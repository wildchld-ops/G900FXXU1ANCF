.class Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;
.super Ljava/lang/Object;
.source "TwDndGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwDndGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScrollRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndGridView;Lcom/sec/android/touchwiz/widget/TwDndGridView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwDndGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndAutoScrollMode:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$100(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mAutoScrollTopDelta:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$200(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndAutoScrollMode:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$100(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mAutoScrollBottomDelta:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$300(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v1, v0, v0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->trackMotionScroll(II)Z

    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #calls: Lcom/sec/android/touchwiz/widget/TwDndGridView;->reorderIfNeeded()V
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndAutoScrollMode:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$100(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method
