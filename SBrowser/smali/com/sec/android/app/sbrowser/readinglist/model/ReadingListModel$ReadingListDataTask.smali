.class Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;
.super Landroid/os/AsyncTask;
.source "ReadingListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadingListDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private isSavePage:Z

.field private mReadingListFileExt:Ljava/lang/String;

.field private mReadingListFileName:Ljava/lang/String;

.field private mReadingListUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

.field private mTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field private mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mReadingListFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mReadingListFileExt:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mReadingListUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mReadingListFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mReadingListFileExt:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mReadingListUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->isSavePage:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;ZLcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;-><init>(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;Z)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 12

    const/4 v11, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->access$200(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;)Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->access$200(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;)Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    move-result-object v2

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mReadingListFileName:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mReadingListFileName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mReadingListFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mReadingListFileExt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setPath(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    iget-object v8, v8, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mEncryptedDirectryPath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getStoragePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->access$300(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getActualReadingListDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setDirPath(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setUrl(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v4

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->isSavePage:Z

    if-nez v8, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getArticleHeading()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getArticleHeading()Ljava/lang/String;

    move-result-object v8

    const-string v9, "&amp;"

    const-string v10, "&"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "&lt;"

    const-string v10, "<"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "&gt;"

    const-string v10, ">"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "&quot;"

    const-string v10, "\""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "&#039;"

    const-string v10, "\'"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setTitle(Ljava/lang/String;)V

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->isReaderMode()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->isSavePage:Z

    if-nez v8, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setCachedThumbnail()V

    invoke-virtual {v2, v11}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setIsReaderPage(Z)V

    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->access$300(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->createReadingListValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mValues:Landroid/content/ContentValues;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->access$300(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v8, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/sbrowser/common/Tab;->setReadingListItem(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto/16 :goto_0

    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->isReaderMode()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->isSavePage:Z

    if-nez v8, :cond_4

    invoke-virtual {v2, v11}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setIsReaderPage(Z)V

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setIsReaderPage(Z)V

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Long;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mReadingListUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->access$300(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0148

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->onCancelled(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mReadingListUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->access$300(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;->dismissProgress(Landroid/content/Context;Lorg/chromium/content/browser/ContentView;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mReadingListUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->access$300(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0148

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;->showToast(Landroid/content/Context;I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->clearAll()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->mReadingListUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->access$300(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0020

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;->showToast(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
