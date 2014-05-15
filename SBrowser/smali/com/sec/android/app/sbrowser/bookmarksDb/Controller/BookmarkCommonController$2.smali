.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$2;
.super Ljava/lang/Object;
.source "BookmarkCommonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->donotUndo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->clearUndos(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$200(Landroid/content/Context;)V

    return-void
.end method
