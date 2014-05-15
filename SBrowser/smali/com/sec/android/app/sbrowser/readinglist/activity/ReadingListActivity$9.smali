.class Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$9;
.super Ljava/lang/Object;
.source "ReadingListActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$9;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x3

    if-ne p2, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id >= 0 AND is_deleted = 0 AND (title LIKE  \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\' OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE  \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\' OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "description"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE  \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$9;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSearchFlag:Z
    invoke-static {v4, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2402(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$9;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->createReadingListDatas(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$9;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$9;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2300(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$9;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    new-instance v4, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$9$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$9$1;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$9;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$9;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #calls: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->checkResultSize()V
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2500(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$9;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSearchFlag:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2402(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method
