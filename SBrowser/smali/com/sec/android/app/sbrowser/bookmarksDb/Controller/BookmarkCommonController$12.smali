.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$12;
.super Ljava/lang/Object;
.source "BookmarkCommonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->updateFavicon(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

.field final synthetic val$data:[B

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$12;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$12;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$12;->val$data:[B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$12;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$12;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$12;->val$data:[B

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->updateFavicon(Landroid/content/Context;Ljava/lang/String;[B)V

    return-void
.end method
