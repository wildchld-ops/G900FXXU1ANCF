.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$2;
.super Ljava/lang/Object;
.source "AddBookmarkPhoneUi.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mIsInEditMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mLayoutComplete:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkTitleInput:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mLayoutComplete:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->access$002(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;Z)Z

    :cond_0
    return-void
.end method
