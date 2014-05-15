.class Lcom/sec/android/app/sbrowser/history/controller/HistoryController$1;
.super Landroid/os/AsyncTask;
.source "HistoryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->fillQuickAccessData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/history/controller/HistoryController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->selectItemsFromDB()Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mPintabList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->access$002(Lcom/sec/android/app/sbrowser/history/controller/HistoryController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    #getter for: Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mPintabList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->access$000(Lcom/sec/android/app/sbrowser/history/controller/HistoryController;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mPintabList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->access$002(Lcom/sec/android/app/sbrowser/history/controller/HistoryController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    return-void
.end method
