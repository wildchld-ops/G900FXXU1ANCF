.class public interface abstract Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;
.super Ljava/lang/Object;
.source "DeleteBookmarksUiController.java"


# virtual methods
.method public abstract deleteAllCheckboxSelected()V
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

.method public abstract fillImages(I)V
.end method

.method public abstract getBookmarkObjectChildren(Ljava/lang/Long;)V
.end method

.method public abstract getCount()I
.end method

.method public abstract getObject(I)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
.end method

.method public abstract getObjectsSize()I
.end method

.method public abstract getShowMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;
.end method

.method public abstract isAnyObjectChecked()Z
.end method

.method public abstract isEnablePopUp()V
.end method

.method public abstract toggleAllCheckbox(Z)V
.end method

.method public abstract updateAllCheckedBox()V
.end method
