.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$3;
.super Landroid/os/Handler;
.source "DeleteBookmarksController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mDeleteBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;->updateChildren()V

    :cond_0
    return-void
.end method
