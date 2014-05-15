.class Lcom/sec/android/app/sbrowser/common/Tab$16;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab;->checkIfUrlBookmarked(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/Tab;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$16;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/Tab$16;->val$url:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$16;->val$url:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$16;->val$url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$16;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab$16;->val$url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->isURLBookmarked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$16;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->bookmarkHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$7900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$16;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->bookmarkHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$7900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
