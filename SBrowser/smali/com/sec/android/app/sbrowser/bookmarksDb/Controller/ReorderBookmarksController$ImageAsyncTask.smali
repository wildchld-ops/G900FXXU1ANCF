.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "ReorderBookmarksController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->doInBackground([Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;)Ljava/lang/Void;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mUpdateImagesFrom:I
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$1100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)I

    move-result v6

    if-lt v6, v4, :cond_1

    :cond_0
    return-object v9

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mUpdateImagesFrom:I
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$1100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)I

    move-result v6

    add-int/lit8 v1, v6, 0xc

    if-lt v1, v4, :cond_2

    add-int/lit8 v1, v4, -0x1

    :cond_2
    const/4 v5, 0x0

    aget-object v6, p1, v8

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->GRID_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mUpdateImagesFrom:I
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$1100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)I

    move-result v2

    :goto_0
    if-gt v2, v1, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isThumbnailRequested()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->getThumbnailForUrl(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v6, v0

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setThumbnailBlob([B)V

    const/4 v5, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    aget-object v6, p1, v8

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->LIST_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mUpdateImagesFrom:I
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$1100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)I

    move-result v2

    :goto_1
    if-gt v2, v1, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isFaviconRequested()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Lorg/samsung/chrome/browser/SbrFaviconController;->getInstance()Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/samsung/chrome/browser/SbrFaviconController;->IsFaviconAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lorg/samsung/chrome/browser/SbrFaviconController;->getInstance()Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/samsung/chrome/browser/SbrFaviconController;->GetFaviconData(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v6, v0

    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->updateFavicon(Ljava/lang/String;[B)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setFavicon([B)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setFaviconRequested()V

    const/4 v5, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    if-eqz v5, :cond_7

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mImageHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$1200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    aget-object v6, p1, v8

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->GRID_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v6, v7, :cond_0

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isThumbnailRequested()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->getThumbnailForUrl(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v6, v0

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setThumbnailBlob([B)V

    const/4 v5, 0x1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
