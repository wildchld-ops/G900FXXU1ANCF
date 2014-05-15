.class Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;
.super Ljava/lang/Object;
.source "TwHorizontalDndListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwDndController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderFooterDndController"
.end annotation


# instance fields
.field private final mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;Lcom/sec/android/touchwiz/widget/TwDndController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    return-void
.end method


# virtual methods
.method public allowDrag(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getHeaderViewsCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrag(I)Z

    move-result v0

    goto :goto_0
.end method

.method public allowDrop(II)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getHeaderViewsCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    move-result v0

    goto :goto_0
.end method

.method public dropDone(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getHeaderViewsCount()I

    move-result p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getHeaderViewsCount()I

    move-result p2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 p2, v0, -0x1

    goto :goto_1
.end method
