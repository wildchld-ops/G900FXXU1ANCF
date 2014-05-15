.class public interface abstract Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;
.super Ljava/lang/Object;
.source "ReorderBookmarksUi.java"


# virtual methods
.method public abstract configureAndShowView()V
.end method

.method public abstract enableDragNDrop()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract setBookmarkActivityAndController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;)V
.end method

.method public abstract setParentFolderName(Ljava/util/ArrayList;)V
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

.method public abstract updateReorderBookmarksGrid()V
.end method

.method public abstract updateReorderBookmarksList()V
.end method

.method public abstract updateViews()V
.end method
