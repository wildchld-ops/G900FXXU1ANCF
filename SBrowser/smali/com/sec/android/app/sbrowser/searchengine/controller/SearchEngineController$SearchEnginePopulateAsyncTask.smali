.class Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$SearchEnginePopulateAsyncTask;
.super Landroid/os/AsyncTask;
.source "SearchEngineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchEnginePopulateAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$SearchEnginePopulateAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$SearchEnginePopulateAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;

    #getter for: Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->access$100(Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->populate()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$SearchEnginePopulateAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$SearchEnginePopulateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;

    #getter for: Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->access$100(Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->setDefaultSearchEngineToNative()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
