.class public Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;
.super Landroid/app/Activity;
.source "SynctabActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SynctabActivity"


# instance fields
.field private mSBrowserMainActivityContextId:Ljava/lang/String;

.field private mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

.field syncTabUi:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->syncTabUi:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    return-void
.end method

.method private createUI()Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public callOnClickListener(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->callOnClickListener(Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->onBackPressed()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "SBrowserMainActivityContextId"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->isContentViewListAdpaterKeyValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "SynctabActivity:SBrowserSync"

    const-string v5, "SBrowserMainActivityContextId is inValid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->createUI()Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->syncTabUi:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->syncTabUi:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->syncTabUi:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->setUiToTabSyncController(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->onCreate(Landroid/os/Bundle;)V

    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const-class v4, Landroid/view/ViewConfiguration;

    const-string v5, "sHasPermanentMenuKey"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->onDestroy()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->onPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->onResume()V

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;->mSyncTabController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->onWindowFocusChanged(Z)V

    return-void
.end method
