.class public Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;
.super Landroid/os/AsyncTask;
.source "ReadingListImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CacheAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CacheAsyncTask - Invalid param"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->clearCacheInternal()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->initDiskCacheInternal()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->flushCacheInternal()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->closeCacheInternal()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
