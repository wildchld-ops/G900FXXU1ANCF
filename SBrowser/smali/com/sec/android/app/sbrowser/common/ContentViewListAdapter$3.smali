.class Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$3;
.super Ljava/lang/Object;
.source "ContentViewListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->fileReadRestorableTabCountByInstanceId(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field final synthetic val$instanceIndex:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$3;->val$instanceIndex:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mTabSaver:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$900(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$3;->val$instanceIndex:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->getRestorableTabCountByInstanceId(I)I

    move-result v2

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mOtherInstanceRestorableTabCounter:I
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$4602(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->mOtherInstanceRestorableTabCounter:I
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$4602(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;I)I

    const-string v1, "ContentViewListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
