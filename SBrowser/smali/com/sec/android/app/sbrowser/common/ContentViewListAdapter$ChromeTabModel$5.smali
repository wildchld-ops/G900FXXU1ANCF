.class Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$5;
.super Ljava/lang/Object;
.source "ContentViewListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->onNtpResourcesLoaded(Lcom/sec/android/app/sbrowser/common/Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

.field final synthetic val$tabId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$5;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$5;->val$tabId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$5;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$5;->val$tabId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$5;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$3200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$5;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$3200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$5;->val$tabId:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$5;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$3200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$5;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    #getter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->mCachedNtpTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$3200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$5;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->clearCachedNtp()V
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$3500(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)V

    :cond_1
    return-void
.end method
