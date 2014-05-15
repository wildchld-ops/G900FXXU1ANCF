.class Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$GetAllReadingListTask;
.super Landroid/os/AsyncTask;
.source "ReadingListSuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAllReadingListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$GetAllReadingListTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$GetAllReadingListTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$GetAllReadingListTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$GetAllReadingListTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$GetAllReadingListTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$GetAllReadingListTask;->mContext:Landroid/content/Context;

    #calls: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->getAllReadingListData(Landroid/content/Context;)Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->access$200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$GetAllReadingListTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$GetAllReadingListTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$GetAllReadingListTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mReadingListDataList:Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->access$302(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$GetAllReadingListTask;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$GetAllReadingListTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
