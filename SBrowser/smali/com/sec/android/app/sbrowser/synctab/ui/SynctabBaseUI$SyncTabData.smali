.class Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;
.super Landroid/os/AsyncTask;
.source "SynctabBaseUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncTabData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;",
        "Ljava/lang/String;",
        "Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;)Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;
    .locals 2

    const/4 v1, 0x0

    aget-object v0, p1, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->getGroupDetails()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->historyData:Ljava/util/List;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;->doInBackground([Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;)Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->processPostExecuteUI(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;->onPostExecute(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
