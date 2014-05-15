.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$2;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    const v3, 0x7f0c01ed

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mEditBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->editBookmarkFolder(Ljava/lang/String;)V

    goto :goto_0
.end method
