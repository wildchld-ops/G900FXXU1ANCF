.class Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;
.super Ljava/lang/Object;
.source "TwGalleryEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwGalleryEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutRequester"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V

    return-void
.end method


# virtual methods
.method public getView(I)Landroid/view/View;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->retrieveFromScrap(I)Landroid/view/View;
    invoke-static {v2, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2000(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mDataChanged:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1500(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    move-result-object v2

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->getActiveView(I)Landroid/view/View;
    invoke-static {v2, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$2200(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;I)Landroid/view/View;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v2, p1, v0, v3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v2, p1, v0, v3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mScrapAllView:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1500(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    move-result-object v2

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->add(Landroid/view/View;)V
    invoke-static {v2, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$1600(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getViewForCache(I)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2400(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getFirstVisibleViewPosition()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mDataChanged:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v3

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->getActiveView(II)Landroid/view/View;
    invoke-static {v3, p1, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$3000(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;II)Landroid/view/View;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v3

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->getCaching(II)Landroid/view/View;
    invoke-static {v3, p1, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$3100(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;II)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v3

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->getScrap()Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$3200(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v3, p1, v1, v4}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v3, p1, v1, v4}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v3

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->addScrap(Landroid/view/View;)V
    invoke-static {v3, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$3300(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;Landroid/view/View;)V

    goto :goto_0
.end method

.method public refreshCaching()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2400(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getFirstVisibleViewPosition()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v1

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->refresh(I)V
    invoke-static {v1, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$2700(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;I)V

    return-void
.end method

.method public requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1400(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    return-void
.end method

.method public requestDetachViewsFromParent(II)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v0

    move v1, p1

    :goto_0
    add-int v3, p1, p2

    if-ge v1, v3, :cond_1

    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1500(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    move-result-object v3

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->add(Landroid/view/View;)V
    invoke-static {v3, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$1600(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachViewsFromParent(II)V
    invoke-static {v3, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1700(Lcom/sec/android/touchwiz/widget/TwGalleryEx;II)V

    return-void
.end method

.method public requestDetachViewsFromParent(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachViewFromParent(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1800(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1500(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    move-result-object v0

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->add(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$1600(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestDetachViewsFromParentForCache(IIIZ)V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2400(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getFirstVisibleViewPosition()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    add-int v5, p1, v2

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v4

    add-int v5, p3, v2

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->putCaching(ILandroid/view/View;I)V
    invoke-static {v4, v5, v3, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$2500(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;ILandroid/view/View;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachViewsFromParent(II)V
    invoke-static {v4, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2600(Lcom/sec/android/touchwiz/widget/TwGalleryEx;II)V

    if-eqz p4, :cond_2

    if-lez p2, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v4

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->refresh(I)V
    invoke-static {v4, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$2700(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;I)V

    :cond_2
    return-void
.end method

.method public requestDetachViewsFromParentForCache(IIZ)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2400(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getFirstVisibleViewPosition()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v2

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->putCaching(ILandroid/view/View;I)V
    invoke-static {v2, p2, v1, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$2500(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;ILandroid/view/View;I)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachViewFromParent(Landroid/view/View;)V
    invoke-static {v2, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2800(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;)V

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v2

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->refresh(I)V
    invoke-static {v2, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$2700(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;I)V

    :cond_0
    return-void
.end method

.method public requestdetachAllViewsFromParent()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1500(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    move-result-object v2

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->add(Landroid/view/View;)V
    invoke-static {v2, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$1600(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachAllViewsFromParent()V
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1900(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    return-void
.end method

.method public requestdetachAllViewsFromParentForCache(IZ)V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2400(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getFirstVisibleViewPosition()I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v4

    add-int v5, p1, v2

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->putCaching(ILandroid/view/View;I)V
    invoke-static {v4, v5, v3, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$2500(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;ILandroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    if-lez v0, :cond_1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v4

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->refresh(I)V
    invoke-static {v4, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$2700(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;I)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachAllViewsFromParent()V
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2900(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    return-void
.end method

.method public setCachingSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    #setter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1202(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)I

    return-void
.end method
