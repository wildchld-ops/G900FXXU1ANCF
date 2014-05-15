.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$3;
.super Ljava/lang/Object;
.source "AddBookmarkController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->showUndoBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

.field final synthetic val$mRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$3;->val$mRootView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/UndoBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->hideUndoBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$3;->val$mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->donotUndo()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
