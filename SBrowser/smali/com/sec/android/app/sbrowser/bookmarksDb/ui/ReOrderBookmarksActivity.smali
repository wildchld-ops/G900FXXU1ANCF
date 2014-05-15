.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;
.super Landroid/app/Activity;
.source "ReOrderBookmarksActivity.java"


# instance fields
.field mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

.field mReorderBookmarksPhoneUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;

.field mReorderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;

.field private mflag:Z

.field private sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksPhoneUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;

    return-void
.end method

.method private createUi()Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;
    .locals 2

    :try_start_0
    const-class v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksPhoneUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksPhoneUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->finishActivity()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->onConfgurationChanged(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->createUi()Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->setUi(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->setParentActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mflag:Z

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->onPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->onResume()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mflag:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->recreate()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;->mReorderBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
