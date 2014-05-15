.class Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$1;
.super Ljava/lang/Thread;
.source "ReadingListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->updateReadingListRead(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$id:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$1;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$1;->val$uri:Landroid/net/Uri;

    iput p4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$1;->val$cr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$1;->val$uri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$1;->val$id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->LOGTAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->access$400(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while resolving updateScrapRead  - exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
