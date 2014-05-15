.class Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11$1;
.super Ljava/lang/Object;
.source "ReadingListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11$1;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11$1;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11$1;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11$1;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11$1;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$11;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForProgressDialog:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$802(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    :cond_0
    return-void
.end method
