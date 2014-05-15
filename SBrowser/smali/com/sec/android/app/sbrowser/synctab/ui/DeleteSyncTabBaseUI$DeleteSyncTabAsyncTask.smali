.class Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI$DeleteSyncTabAsyncTask;
.super Landroid/os/AsyncTask;
.source "DeleteSyncTabBaseUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteSyncTabAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI$DeleteSyncTabAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI$DeleteSyncTabAsyncTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI$DeleteSyncTabAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI$DeleteSyncTabAsyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getDevicesList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI$DeleteSyncTabAsyncTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI$DeleteSyncTabAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;->processPostExecuteUI(Ljava/util/ArrayList;)V

    return-void
.end method
