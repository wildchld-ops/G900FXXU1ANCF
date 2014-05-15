.class public Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;
.super Ljava/lang/Object;
.source "SynctabController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/synctab/controller/SynctabActivityController;
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;
.implements Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SynctabController"


# instance fields
.field mSBrowserCPUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

.field private mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

.field public mSelectedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTabSyncActivity:Landroid/app/Activity;

.field syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

.field private tabSyncCompleted:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSBrowserCPUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->tabSyncCompleted:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mTabSyncActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSBrowserCPUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mTabSyncActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public callOnClickListener(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->callOnClickListener(Ljava/lang/String;)V

    return-void
.end method

.method public checkSamsungAccount(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSBrowserCPUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public deleteTabsConfirm()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    check-cast v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    check-cast v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->hideUndoBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    check-cast v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$3;-><init>(Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public finishActivityWithResult(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mTabSyncActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getGroupDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserTabSyncVO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSBrowserCPUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getGroupedDetailsFromTabTable()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfDeviceIds(Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSBrowserCPUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getNumberOfDeviceIds(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public modelPropertyChanged(ILjava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v1, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mTabSyncActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    const-string v2, "sync_open_pages"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getDownSyncCount(Ljava/lang/String;)I

    move-result v0

    const-string v1, "SynctabController : SBrowserSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiving SBROWSER_TAB_SYNC_COMPLETED : downSyncCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->startTabSyncing()V

    new-instance v1, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mTabSyncActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    const-string v2, "sync_open_pages"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->updateDownSyncCount(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mTabSyncActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    const-string v2, "sync_open_pages"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getDownSyncCount(Ljava/lang/String;)I

    move-result v0

    const-string v1, "SynctabController : SBrowserSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiving SBROWSER_SYNC_COMPLETED : downSyncCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->startTabSyncing()V

    new-instance v1, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mTabSyncActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    const-string v2, "sync_open_pages"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->updateDownSyncCount(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->setSyncTabController(Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mTabSyncActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->initializeUI(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->registerSyncStateObserver(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SynctabControllerSBrowserSync"

    const-string v1, "on destroy >>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->unregisterSyncStateObserver(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mTabSyncActivity:Landroid/app/Activity;

    const-string v1, "com.sec.android.app.sbrowser"

    const-string v2, "0002"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/applogging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUndo()V
    .locals 2

    const-string v0, "SynctabController"

    const-string v1, "onUndo >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>.... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$2;-><init>(Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setSelectedDevices(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSelectedDevices:Ljava/util/ArrayList;

    return-void
.end method

.method public setUiToTabSyncController(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->syncTabUI:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;

    return-void
.end method

.method public triggerTabsyncManually()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController$1;-><init>(Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateTabTableUsingDevice(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->mSBrowserCPUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->updateTabTableUsingDevice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
