.class Lcom/sec/android/app/sbrowser/reader/ReaderDetection$5;
.super Ljava/lang/Object;
.source "ReaderDetection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->setReaderImageUrl(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$5;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$5;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mForExtractMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$5;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    #getter for: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$700(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$5;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    #getter for: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$700(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->startExtracterIfNeeded()V

    :cond_0
    return-void
.end method
