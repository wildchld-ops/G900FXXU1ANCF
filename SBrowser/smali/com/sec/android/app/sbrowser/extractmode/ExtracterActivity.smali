.class public Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;
.super Landroid/app/Activity;
.source "ExtracterActivity.java"


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    return-void
.end method

.method private createController()Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->isXLarge()Z

    move-result v2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->setUi(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;)V

    return-object v0

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModePhoneUI;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModePhoneUI;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getController()Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    check-cast v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;->onConfgurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;->onContextItemSelected(Landroid/view/MenuItem;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->createController()Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;->onDestroy()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;->onPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;->onResume()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityController;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
