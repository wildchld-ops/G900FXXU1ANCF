.class public interface abstract Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;
.super Ljava/lang/Object;
.source "ShowBookmarksUiController.java"


# virtual methods
.method public abstract addShortCut(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
.end method

.method public abstract clearAsyncTask()V
.end method

.method public abstract createNewWindow([Ljava/lang/String;)V
.end method

.method public abstract deleteBookmarkObjects(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract donotUndoToController()V
.end method

.method public abstract fillImages(I)V
.end method

.method public abstract getChilderensize()I
.end method

.method public abstract getCurrentParentEditable()Z
.end method

.method public abstract getShowBookmarksMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;
.end method

.method public abstract getThumbnailForUrl(Ljava/lang/String;)[B
.end method

.method public abstract getchild(I)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
.end method

.method public abstract handleHoverFolderClick(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;J)V
.end method

.method public abstract handleRowClick(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
.end method

.method public abstract isUrlPinned(Ljava/lang/String;)Z
.end method

.method public abstract launchCreateFolderActivity()V
.end method

.method public abstract launchDeleteActivity()V
.end method

.method public abstract launchHistoryActivity()V
.end method

.method public abstract launchMoveToFolderActivity()V
.end method

.method public abstract launchReorderActivity()V
.end method

.method public abstract onClickAddBookmark()V
.end method

.method public abstract onCreate(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public abstract onUndo()V
.end method

.method public abstract requestDeleteBookmarkObject(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestEditBookmarkObject(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
.end method

.method public abstract selectAncestor(I)V
.end method

.method public abstract setAsHomePage(Ljava/lang/String;)V
.end method

.method public abstract setShowBookmarksMode(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;)V
.end method

.method public abstract shareUrl(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
.end method
