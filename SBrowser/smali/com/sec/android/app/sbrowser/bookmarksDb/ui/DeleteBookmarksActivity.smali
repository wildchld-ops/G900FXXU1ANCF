.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;
.super Landroid/app/Activity;
.source "DeleteBookmarksActivity.java"


# instance fields
.field mDeleteBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

.field mDeleteBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;

.field private mLocale:Ljava/lang/String;

.field private mflag:Z

.field private sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mLocale:Ljava/lang/String;

    return-void
.end method

.method private createUi()Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mDeleteBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->finishActivity()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mDeleteBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mDeleteBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mLocale:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mDeleteBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->onConfgurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mDeleteBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->createUi()Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mDeleteBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mDeleteBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mDeleteBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->setUi(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mDeleteBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->setParentActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mDeleteBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mflag:Z

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mDeleteBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mDeleteBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->onDestroy()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mDeleteBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mLocale:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mDeleteBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->onPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mDeleteBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mflag:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->recreate()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;->mDeleteBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->onResume()V

    return-void
.end method
