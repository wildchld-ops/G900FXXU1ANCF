.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$5;
.super Ljava/lang/Object;
.source "CreateBookmarkFolderPhoneUi.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;->displayList()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;

    invoke-virtual {v2, p3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    int-to-long v3, p3

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;->mSelFolderID:J
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;->access$002(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;J)J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;

    invoke-virtual {v2, p3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;->setSelectedPosition(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderNameInput:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderNameInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;->setCheckforSelectedPosition(J)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
