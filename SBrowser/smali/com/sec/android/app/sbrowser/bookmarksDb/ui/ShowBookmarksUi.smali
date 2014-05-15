.class public interface abstract Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
.super Ljava/lang/Object;
.source "ShowBookmarksUi.java"


# virtual methods
.method public abstract addAncestors(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract appendAncestor(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;ZZ)V
.end method

.method public abstract clearUndoBar()V
.end method

.method public abstract configureAndShowView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract enableHistory(Z)V
.end method

.method public abstract exitCABMode()V
.end method

.method public abstract getAdapter()Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneAdapter;
.end method

.method public abstract getCheckBoxMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$BookmarkCheckBoxModeType;
.end method

.method public abstract getGridView()Landroid/widget/GridView;
.end method

.method public abstract getListView()Landroid/widget/ListView;
.end method

.method public abstract getLongPressedBookmarkObject()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
.end method

.method public abstract handleSelectAll(Z)V
.end method

.method public abstract isBookmarksCABShown()Z
.end method

.method public abstract isSelectAllChecked()Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
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

.method public abstract setAncestorPositon(I)V
.end method

.method public abstract setBookmarkActivityAndController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;)V
.end method

.method public abstract setFragment(Landroid/support/v4/app/Fragment;)V
.end method

.method public abstract setNoBookmarksLayout(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;)V
.end method

.method public abstract setSelectAllChecked(Z)V
.end method

.method public abstract showDisabledHistory(Z)V
.end method

.method public abstract showPathIndicator(Z)V
.end method

.method public abstract showSelectAllLayout(Z)V
.end method

.method public abstract showUndoBar(IZ)V
.end method

.method public abstract toggleAddBookmark(Z)V
.end method

.method public abstract updateChildren()V
.end method

.method public abstract updateEditableItems(I)V
.end method

.method public abstract updateNonEditItems(I)V
.end method
