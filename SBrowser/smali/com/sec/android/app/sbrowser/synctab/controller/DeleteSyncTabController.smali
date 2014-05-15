.class public Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;
.super Ljava/lang/Object;
.source "DeleteSyncTabController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;


# instance fields
.field private mActivity:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;

.field private mContext:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;

.field private mDeleteSyncTabActivityUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;->mContext:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;->mActivity:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;)Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;->mActivity:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;

    return-object v0
.end method

.method private deleteTabsFromDB(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController$1;-><init>(Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public deleteTabs(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;

    iget-boolean v4, v4, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;->isSelected:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;->deleteTabsFromDB(Ljava/util/ArrayList;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "selectedDevices"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "TABS_DELETED"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;->mActivity:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;->mActivity:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;->finish()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;->mDeleteSyncTabActivityUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;->setSyncTabController(Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;->mDeleteSyncTabActivityUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;->initializeUI()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;->mDeleteSyncTabActivityUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;->mDeleteSyncTabActivityUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setUI(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;->mDeleteSyncTabActivityUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;

    return-void
.end method
