.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$3;
.super Landroid/os/Handler;
.source "MoveToFolderBookmarksController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->updateChildren()V

    :cond_0
    return-void
.end method
