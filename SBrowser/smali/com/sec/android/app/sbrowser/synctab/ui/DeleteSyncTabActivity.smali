.class public Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;
.super Landroid/app/Activity;
.source "DeleteSyncTabActivity.java"


# instance fields
.field mDeleteSyncTabActivityController:Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;

.field mDeleteSyncTabActivityUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;->mDeleteSyncTabActivityController:Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;->mDeleteSyncTabActivityUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;

    return-void
.end method

.method private createUI()Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;->mDeleteSyncTabActivityController:Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;->createUI()Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;->mDeleteSyncTabActivityUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;->mDeleteSyncTabActivityController:Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;->mDeleteSyncTabActivityController:Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;->mDeleteSyncTabActivityUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;->setUI(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;->mDeleteSyncTabActivityController:Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
