.class public interface abstract Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;
.super Ljava/lang/Object;
.source "HistoryUiController.java"


# virtual methods
.method public abstract addToQuickAccess(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract clearAllHistroy()V
.end method

.method public abstract copy(Ljava/lang/CharSequence;)V
.end method

.method public abstract createNewWindow([Ljava/lang/String;)V
.end method

.method public abstract deleteHistoryURL(Ljava/lang/String;J)V
.end method

.method public abstract finish()V
.end method

.method public abstract getAllHistroy()V
.end method

.method public abstract getAppContext()Landroid/content/Context;
.end method

.method public abstract getExpandListView()Landroid/view/View;
.end method

.method public abstract getGroupItMode()Z
.end method

.method public abstract getHistoryDataResult()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHistoryGroupItResult()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getModel()Lcom/sec/android/app/sbrowser/history/model/HistoryModel;
.end method

.method public abstract getParentActivity()Landroid/app/Activity;
.end method

.method public abstract getRelatedNodeCountForClusterByCategory(Ljava/lang/String;)I
.end method

.method public abstract getRelatedNodeCountForClusterByWebsite(Ljava/lang/String;)I
.end method

.method public abstract getRelatedNodeForClusterByCategory(Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRelatedNodeForClusterByWebsite(Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract isShowingActionMode()Z
.end method

.method public abstract isUrlPinned(Ljava/lang/String;)Z
.end method

.method public abstract notifyChange()V
.end method

.method public abstract onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end method

.method public abstract onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end method

.method public abstract onDestroyActionMode(Landroid/view/ActionMode;)V
.end method

.method public abstract onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end method

.method public abstract promptToClearHistory()V
.end method

.method public abstract resetGroupItVariables()V
.end method

.method public abstract saveToBookmarks(Lcom/sec/android/app/sbrowser/history/HistoryItem;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setAsHomePage(Ljava/lang/String;)V
.end method

.method public abstract setGroupItMode(Z)V
.end method

.method public abstract setSelection(Z)V
.end method

.method public abstract shareUrl(Ljava/lang/String;Ljava/lang/String;)V
.end method
