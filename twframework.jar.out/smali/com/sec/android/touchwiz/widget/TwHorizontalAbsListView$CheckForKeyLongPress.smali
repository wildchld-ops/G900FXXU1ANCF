.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;
.super Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$WindowRunnnable;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$WindowRunnnable;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v1, v3, v4

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v3, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-wide v5, v5, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setPressed(Z)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setPressed(Z)V

    if-eqz v2, :cond_0

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
