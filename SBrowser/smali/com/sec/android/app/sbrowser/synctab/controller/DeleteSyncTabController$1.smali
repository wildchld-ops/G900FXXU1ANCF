.class Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController$1;
.super Ljava/lang/Object;
.source "DeleteSyncTabController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;->deleteTabsFromDB(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;

.field final synthetic val$devicesList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController$1;->val$devicesList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsUndoPopupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;->mActivity:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;->access$000(Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;)Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController$1;->val$devicesList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->markAsDeleteInTabTable(Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;->mActivity:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;->access$000(Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController;)Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabController$1;->val$devicesList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->deleteTabsConfirm(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
