.class public Lcom/samsung/contacts/model/SnsFeedsLoader;
.super Landroid/content/AsyncTaskLoader;
.source "SnsFeedsLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/samsung/contacts/model/SnsFeeds;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsLoadFinished:Z

.field private mRequestedFeeds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/model/sns/SnsType;",
            ">;"
        }
    .end annotation
.end field

.field private mSnsPhotoManager:Lcom/samsung/contacts/detail/SnsPhotoManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/contacts/detail/SnsPhotoManager;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/contacts/detail/SnsPhotoManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/model/sns/SnsType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/contacts/model/SnsFeedsLoader;->mSnsPhotoManager:Lcom/samsung/contacts/detail/SnsPhotoManager;

    iput-object p3, p0, Lcom/samsung/contacts/model/SnsFeedsLoader;->mRequestedFeeds:Ljava/util/ArrayList;

    return-void
.end method

.method private loadSnsItems()Lcom/samsung/contacts/model/SnsFeeds;
    .locals 12

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "from_id = ?"

    iget-object v0, p0, Lcom/samsung/contacts/model/SnsFeedsLoader;->mRequestedFeeds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/contacts/model/sns/SnsType;

    invoke-virtual {v10}, Lcom/samsung/contacts/model/sns/SnsType;->getSourceId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/samsung/contacts/model/sns/SnsType;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Lcom/samsung/contacts/model/sns/SnsType;->getProjection()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/contacts/model/SnsFeedsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v10, v6}, Lcom/samsung/contacts/model/sns/SnsType;->getSnsFeedItem(Landroid/database/Cursor;)Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/contacts/model/SnsFeeds;

    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v4}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/contacts/model/SnsFeeds;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method


# virtual methods
.method public deliverResult(Lcom/samsung/contacts/model/SnsFeeds;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/model/SnsFeedsLoader;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/model/SnsFeedsLoader;->mIsLoadFinished:Z

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/contacts/model/SnsFeeds;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/model/SnsFeedsLoader;->deliverResult(Lcom/samsung/contacts/model/SnsFeeds;)V

    return-void
.end method

.method public loadInBackground()Lcom/samsung/contacts/model/SnsFeeds;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/contacts/model/SnsFeedsLoader;->loadSnsItems()Lcom/samsung/contacts/model/SnsFeeds;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/model/SnsFeedsLoader;->loadInBackground()Lcom/samsung/contacts/model/SnsFeeds;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/samsung/contacts/model/SnsFeedsLoader;->cancelLoad()Z

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/model/SnsFeedsLoader;->mIsLoadFinished:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/model/SnsFeedsLoader;->forceLoad()V

    goto :goto_0
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/contacts/model/SnsFeedsLoader;->cancelLoad()Z

    return-void
.end method
