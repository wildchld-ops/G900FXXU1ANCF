.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "ShowBookmarksController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->doInBackground([Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;)Ljava/lang/Void;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    if-ne v6, v7, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUpdateImagesFrom:I
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)I

    move-result v6

    if-ge v6, v4, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUpdateImagesFrom:I
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)I

    move-result v6

    add-int/lit8 v1, v6, 0xc

    if-lt v1, v4, :cond_2

    add-int/lit8 v1, v4, -0x1

    :cond_2
    const/4 v5, 0x0

    aget-object v6, p1, v9

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->GRID_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUpdateImagesFrom:I
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)I

    move-result v2

    :goto_1
    if-gt v2, v1, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isThumbnailRequested()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getThumbnailForUrl(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v6, v0

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setThumbnailBlob([B)V

    const/4 v5, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setThumbnailBlob([B)V

    goto :goto_2

    :cond_5
    aget-object v6, p1, v9

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->LIST_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v6, v7, :cond_7

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isFaviconRequested()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lorg/samsung/chrome/browser/SbrFaviconController;->getInstance()Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/samsung/chrome/browser/SbrFaviconController;->IsFaviconAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lorg/samsung/chrome/browser/SbrFaviconController;->getInstance()Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/samsung/chrome/browser/SbrFaviconController;->GetFaviconData(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v6, v0

    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->updateFavicon(Ljava/lang/String;[B)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setFavicon([B)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setFaviconRequested()V

    const/4 v5, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_7
    if-eqz v5, :cond_8

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mImageHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    const/4 v5, 0x0

    aget-object v6, p1, v9

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->GRID_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v6, v7, :cond_a

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isThumbnailRequested()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getThumbnailForUrl(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v6, v0

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setThumbnailBlob([B)V

    const/4 v5, 0x1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    if-eqz v5, :cond_0

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mImageHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
