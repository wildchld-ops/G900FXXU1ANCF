.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$4;
.super Ljava/lang/Object;
.source "BookmarkCommonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getBookmarkObjectForID(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

.field final synthetic val$id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$4;->val$id:Ljava/lang/Long;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$4;->val$id:Ljava/lang/Long;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getBookmarkObject(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
