.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$5;
.super Ljava/lang/Object;
.source "AddBookmarkPhoneUi.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->resourceInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkTitleInput:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mAddBookmarkUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkUiController;->updateDoneButton()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
