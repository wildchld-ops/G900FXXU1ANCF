.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;
.super Landroid/app/Activity;
.source "ShowBookmarksActivity.java"


# instance fields
.field mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

.field mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

.field private mflag:Z

.field private sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createUi()Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->finishActivity()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->onBackPressed()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->onConfgurationChanged(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->createUi()Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    new-instance v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->setUi(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v4, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->setParentActivity(Landroid/app/Activity;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->onCreate(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mflag:Z

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getBookmarksListView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->registerForContextMenu(Landroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getBookmarksGridView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->registerForContextMenu(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    const-class v4, Landroid/view/ViewConfiguration;

    const-string v5, "sHasPermanentMenuKey"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->onDestroy()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->onPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksActivity;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->onResume()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
