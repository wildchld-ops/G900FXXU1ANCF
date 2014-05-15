.class Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;
.super Lorg/chromium/content/browser/WebContentsObserverAndroid;
.source "ReadLaterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->initializeWebContentObserver(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    invoke-direct {p0, p2}, Lorg/chromium/content/browser/WebContentsObserverAndroid;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    return-void
.end method


# virtual methods
.method public didStopLoading(Ljava/lang/String;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "did stop loading called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "chrome://newtab/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Evaluation Reader Script Called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "chrome://newtab/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->READER_MODE:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadDataWithBaseUrl Called in IF STATEMENT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$300(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getTabReaderData()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->loadDataWithBaseUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadDataWithBaseUrl Called in ELSE STATEMENT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$300(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getTabReaderData()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->loadDataWithBaseUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Revieved URL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$300(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$400(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getSaveAsOption()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->SAVE_PAGE_AS_IMAGE:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$300(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getScrapBitmap()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->isReaderMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getImageUrlForSavedPages()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v0, v6, v3

    if-eqz v0, :cond_5

    aget-object v0, v6, v3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    aget-object v7, v6, v3

    :cond_5
    if-nez v7, :cond_6

    aget-object v0, v6, v4

    if-eqz v0, :cond_6

    aget-object v0, v6, v4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    aget-object v7, v6, v4

    :cond_6
    if-eqz v7, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$300(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmapFromCachedResource(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$300(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->savePageAs()V

    goto/16 :goto_0
.end method
