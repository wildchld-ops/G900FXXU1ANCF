.class Lcom/sec/android/app/sbrowser/reader/ReaderDetection$1;
.super Ljava/lang/Object;
.source "ReaderDetection.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->executeReaderDetectionLogic(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$1;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleJavaScriptResult(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getReaderStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_3

    const-string v2, "true"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$1;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    const-string v3, "@##@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    #setter for: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeScriptUrl:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$002(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "@##@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$1;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    const-string v3, "true"

    iput-object v3, v2, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeArticle:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$1;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    const/4 v3, 0x1

    #calls: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->checkMode(I)Z
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$100(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$1;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->executeReaderContentExtractScript()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$1;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    #getter for: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$200(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$1;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #setter for: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mIsReaderAvailable:Ljava/lang/Boolean;
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$302(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$1;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->hReader:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$1;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    const-string v3, "false"

    iput-object v3, v2, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeArticle:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$1;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->startCapturingToolBarBitmap(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$1;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    const-string v3, "false"

    iput-object v3, v2, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeArticle:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$1;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->startCapturingToolBarBitmap(Z)V

    goto :goto_0
.end method
