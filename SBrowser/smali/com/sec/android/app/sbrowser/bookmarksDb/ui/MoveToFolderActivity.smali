.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;
.super Landroid/app/Activity;
.source "MoveToFolderActivity.java"


# instance fields
.field mMoveToFolderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

.field mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

.field private mflag:Z

.field private sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createUi()Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneUi;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksPhoneUi;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mMoveToFolderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->finishActivity()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mMoveToFolderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mMoveToFolderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->onConfgurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mMoveToFolderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->createUi()Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mMoveToFolderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->setUi(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mMoveToFolderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->setParentActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mMoveToFolderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mflag:Z

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mMoveToFolderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mMoveToFolderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->onDestroy()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mMoveToFolderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mMoveToFolderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->onPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mMoveToFolderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;->mMoveToFolderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->onResume()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
