.class Lcom/sec/android/app/sbrowser/reader/ReaderDetection$6;
.super Landroid/os/Handler;
.source "ReaderDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/reader/ReaderDetection;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$6;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$6;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$6;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    #getter for: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeScriptUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$000(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeScriptUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$002(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$6;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    #getter for: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$200(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$6;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    #getter for: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderScriptUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$800(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$6;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    #getter for: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$700(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$6;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$6;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    #getter for: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$200(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setReaderVisibility()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$6;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$6;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->startCapturingToolBarBitmap(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
