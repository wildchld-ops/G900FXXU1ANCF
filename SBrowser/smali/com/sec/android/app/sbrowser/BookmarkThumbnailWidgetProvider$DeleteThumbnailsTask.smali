.class Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;
.super Landroid/os/AsyncTask;
.source "BookmarkThumbnailWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteThumbnailsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field bookmarksProjection:[Ljava/lang/String;

.field bookmarksWhere:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mThumbnailUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;

.field thumbnailSelection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->this$0:Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "URL"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->bookmarksProjection:[Ljava/lang/String;

    const-string v0, "DELETED = 1 "

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->bookmarksWhere:Ljava/lang/String;

    const-string v0, "widget_url = ?"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->thumbnailSelection:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->mThumbnailUrls:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v12

    :cond_1
    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkConstants;->bookmarkUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->bookmarksProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->bookmarksWhere:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->mThumbnailUrls:Ljava/util/ArrayList;

    const-string v1, "URL"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    const/4 v10, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->mThumbnailUrls:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->mThumbnailUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->mThumbnailUrls:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-lez v10, :cond_0

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v10, :cond_0

    const/4 v0, 0x1

    new-array v11, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->mThumbnailUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v11, v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->thumbnailSelection:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider$DeleteThumbnailsTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
