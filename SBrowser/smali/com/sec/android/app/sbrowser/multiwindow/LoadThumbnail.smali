.class Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;
.super Landroid/os/AsyncTask;
.source "MultiTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field layoutWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;",
            ">;"
        }
    .end annotation
.end field

.field mChilArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mMultitabInterface:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->mMultitabInterface:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->mChilArrayList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->doInBackground([Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)Ljava/lang/Void;
    .locals 11

    const/4 v10, 0x0

    new-instance v8, Ljava/lang/ref/WeakReference;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->mMultitabInterface:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->mChilArrayList:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v0, v8, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    :cond_0
    return-object v10

    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v7

    :cond_2
    move v5, v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmUpdatedTabArray()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v3, 0x0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmTabInfos()Landroid/util/SparseBooleanArray;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v3, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabThumbnailViewID()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-eqz v6, :cond_3

    new-instance v4, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;

    invoke-direct {v4, p0, v2, v5, v6}, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;Landroid/util/SparseArray;ILandroid/widget/ImageView;)V

    sget-boolean v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->mChilArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method
