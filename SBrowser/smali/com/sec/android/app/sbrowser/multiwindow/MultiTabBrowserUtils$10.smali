.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$10;
.super Ljava/lang/Object;
.source "MultiTabBrowserUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->displayMaximumTabsBeforeOtherInstanceTabsRestoreAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$10;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$10;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->deleteInstancePopupShown:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$802(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$10;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getClearTabStateOfOtherInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$10;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getSBrowserMainActivityInstanceIndex()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$10;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$900(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->resetOtherInstanceRestorableTabCounter()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$10;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$900(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->clearState(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$10;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$900(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->fileReadRestorableTabCountByInstanceId(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$10;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$900(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->resetOtherInstanceRestorableTabCounter()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$10;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$900(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->clearState(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$10;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$900(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->fileReadRestorableTabCountByInstanceId(I)V

    goto :goto_0
.end method
