.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$42;
.super Ljava/lang/Object;
.source "MainActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$42;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$42;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$42;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$42;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getReadingListUrl()Ljava/lang/String;

    move-result-object v4

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$42;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->isURLBookmarked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$42;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->setPageBookMarked(Z)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->setUrlBookmarked(Z)V

    :cond_2
    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$42;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->isURLEditable(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$42;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$6400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$42;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$6400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$42;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$6400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$42;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$6400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    goto :goto_1
.end method
