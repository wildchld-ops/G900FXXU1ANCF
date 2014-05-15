.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$4;
.super Ljava/lang/Object;
.source "CreateBookmarkFolderPhoneUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;->configureAndShowView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderNameInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderNameInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderNameInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c019f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mCreateBookmarkFolderUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUiController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;->getSelectedPosition()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUiController;->doneButtonSelected(Ljava/lang/String;I)V

    goto :goto_0
.end method
