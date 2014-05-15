.class Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;
.super Ljava/lang/Object;
.source "ReadLaterController.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->evaluateDescription(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

.field final synthetic val$isSavePage:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;->val$isSavePage:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleJavaScriptResult(Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x100

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    :try_start_0
    const-string v1, ""

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "null"

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s+|\\r+|\\n+"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_1

    const/4 v3, 0x0

    const/16 v4, 0x100

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SBROWSER_SAVEPAGE_DESCRIPTION_RECEIVED - SavePage Description = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$400(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getDescription()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$900(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v4

    const v5, 0x7f0c01d8

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$400(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getCurrentReadingListData()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$900(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v4

    const v5, 0x7f0c01d8

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setDescription(Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mIsFileNameReceived:Z
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$1200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;->val$isSavePage:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$1000(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$1100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$300(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;->dismissProgress(Landroid/content/Context;Lorg/chromium/content/browser/ContentView;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$400(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->updateDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while evaluating description for save page: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
