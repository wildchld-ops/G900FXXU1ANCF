.class Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;
.super Ljava/lang/Object;
.source "TwHorizontalFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsAttached:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->beginDrag()V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mInitialTouchX:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, 0xa

    if-gez v0, :cond_2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    iput v0, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbX:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbX:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->scrollTo(F)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPendingDrag:Z

    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    add-int/2addr v2, v0

    if-le v2, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    sub-int v0, v1, v2

    goto :goto_0
.end method
