.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$1;
.super Ljava/lang/Object;
.source "EditBookmarkFolderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->setResult(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->finish()V

    return-void
.end method
