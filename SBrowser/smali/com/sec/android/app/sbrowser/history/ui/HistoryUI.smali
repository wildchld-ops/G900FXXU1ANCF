.class public interface abstract Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;
.super Ljava/lang/Object;
.source "HistoryUI.java"


# virtual methods
.method public abstract dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract getExpListView()Landroid/view/View;
.end method

.method public abstract getIsDeleteMode()Z
.end method

.method public abstract getIsShowingActionMode()Z
.end method

.method public abstract getItemCheckBoxClickListener()Landroid/view/View$OnClickListener;
.end method

.method public abstract initializeUI(Landroid/app/Activity;)V
.end method

.method public abstract onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onContextItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end method

.method public abstract onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDestroyActionMode(Landroid/view/ActionMode;)V
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract promptToClearHistory()V
.end method

.method public abstract refreshNoHistoryLayout()V
.end method

.method public abstract setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract setHistory(Lcom/sec/android/app/sbrowser/history/controller/HistoryController;)V
.end method

.method public abstract setLocale()V
.end method

.method public abstract setNoHistoryLayoutIfNeeded()V
.end method

.method public abstract setSelection(Z)V
.end method

.method public abstract showClearAllHistoryDialog()V
.end method

.method public abstract unRegisterNotifications()V
.end method

.method public abstract updateHistoryUi()V
.end method
