.class Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->mMultitabInterface:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->mChilArrayList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->doInBackground([Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)Ljava/lang/Void;
    .locals 14

    const/4 v13, 0x0

    const/4 v0, 0x0

    new-instance v11, Ljava/lang/ref/WeakReference;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->mMultitabInterface:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-direct {v11, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmUpdatedTabArray()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmCurrentTabBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmCurrentTabBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_0

    :try_start_0
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmCurrentTabBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmCurrentTabBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_0
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->mChilArrayList:Ljava/util/ArrayList;

    if-nez v11, :cond_2

    :cond_1
    :goto_1
    return-object v13

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->mChilArrayList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v11, 0x4

    if-gt v4, v11, :cond_8

    const/4 v3, 0x0

    :goto_2
    const/16 v11, 0x8

    if-ge v3, v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->mChilArrayList:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->mChilArrayList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v13, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    goto :goto_1

    :cond_3
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->mChilArrayList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmUpdatedTabArray()Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmTabInfos()Landroid/util/SparseBooleanArray;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v11

    if-ne v9, v11, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v6, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3
    if-eqz v7, :cond_4

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabThumbnailViewID()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    const/4 v7, 0x0

    if-eqz v10, :cond_4

    new-instance v8, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail$1;

    invoke-direct {v8, p0, v6, v9, v10}, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail$1;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;Landroid/util/SparseArray;ILandroid/widget/ImageView;)V

    sget-boolean v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-nez v11, :cond_7

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v11, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_5
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v4, -0x4

    :goto_5
    add-int/lit8 v11, v4, 0x4

    if-ge v3, v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->mChilArrayList:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->mChilArrayList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v13, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    goto/16 :goto_1

    :cond_9
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->mChilArrayList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmUpdatedTabArray()Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmTabInfos()Landroid/util/SparseBooleanArray;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v11

    if-ne v9, v11, :cond_c

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual {v6, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_6
    if-eqz v7, :cond_a

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabThumbnailViewID()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    const/4 v7, 0x0

    if-eqz v10, :cond_a

    new-instance v8, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail$2;

    invoke-direct {v8, p0, v6, v9, v10}, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail$2;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;Landroid/util/SparseArray;ILandroid/widget/ImageView;)V

    sget-boolean v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-nez v11, :cond_d

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v11, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_b
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_c
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_d
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_7
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->mChilArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->loadBackgroundThumbnail()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->layoutWeakReference:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method
