.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;
.super Landroid/app/Activity;
.source "CreateBookmarkFolderActivity.java"


# instance fields
.field mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

.field mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

.field private mLocale:Ljava/lang/String;

.field private mflag:Z

.field private sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mLocale:Ljava/lang/String;

    return-void
.end method

.method private createUi()Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->finishActivity()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mLocale:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->onConfgurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mLocale:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->onContextItemSelected(Landroid/view/MenuItem;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->createUi()Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->setUi(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->setParentActivity(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mflag:Z

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mLocale:Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->onDestroy()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mLocale:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->onPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mflag:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->recreate()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;->mCreateBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
