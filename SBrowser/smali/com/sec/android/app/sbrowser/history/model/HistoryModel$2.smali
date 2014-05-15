.class Lcom/sec/android/app/sbrowser/history/model/HistoryModel$2;
.super Landroid/os/AsyncTask;
.source "HistoryModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->clearHistoryURLs(Ljava/lang/String;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/history/model/HistoryModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$2;->this$0:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$2;->this$0:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    #getter for: Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->access$100(Lcom/sec/android/app/sbrowser/history/model/HistoryModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$2;->this$0:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    #getter for: Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->access$100(Lcom/sec/android/app/sbrowser/history/model/HistoryModel;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getHistoryUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$2;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x22

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    :cond_0
    return-object v4
.end method
