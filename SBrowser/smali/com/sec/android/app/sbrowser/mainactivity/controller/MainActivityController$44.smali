.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$44;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$44;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$44;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getUndoBarLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0a0079

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$44;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->donotUndoFromToolbar(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$44;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$6400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$44;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsBookmarkedrunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$6700(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$44;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$6400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$44;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsBookmarkedrunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$6700(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$44;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$6600(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setBookmarkStarButtonClicked(Z)V

    goto :goto_0
.end method
