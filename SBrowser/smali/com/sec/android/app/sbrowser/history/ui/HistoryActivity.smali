.class public Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;
.super Landroid/app/Activity;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field private mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

.field private mflag:Z

.field private sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createUi()Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;-><init>()V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->onActivityResult(IILandroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->onDestroy()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mflag:Z

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->createUi()Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->setUi(Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->setParentActivity(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->onDestroy()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->onPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mflag:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->recreate()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->onResume()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
