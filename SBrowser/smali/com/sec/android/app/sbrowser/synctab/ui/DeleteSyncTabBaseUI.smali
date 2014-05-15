.class public Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;
.super Ljava/lang/Object;
.source "DeleteSyncTabBaseUI.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivityUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI$DeleteSyncTabAsyncTask;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field protected mController:Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;

.field protected mSelectedItemsCount:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;->mSelectedItemsCount:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;->mActivity:Landroid/app/Activity;

    iput v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;->mSelectedItemsCount:I

    return-void
.end method


# virtual methods
.method public initializeUI()V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public processPostExecuteUI(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setSyncTabController(Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;->mController:Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;

    return-void
.end method
