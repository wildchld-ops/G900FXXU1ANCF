.class public interface abstract Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;
.super Ljava/lang/Object;
.source "DeleteBookmarksUi.java"


# virtual methods
.method public abstract configureAndShowView()V
.end method

.method public abstract enablePopUpMenuItems(ZZ)V
.end method

.method public abstract getCount()I
.end method

.method public abstract handleLanguageChange()V
.end method

.method public abstract isSelectAll()V
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

.method public abstract setBookmarkActivityAndController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;)V
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

.method public abstract updateCABViewChanges(I)V
.end method

.method public abstract updateChildren()V
.end method
