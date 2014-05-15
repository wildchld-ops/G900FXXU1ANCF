.class Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$7;
.super Ljava/lang/Object;
.source "ReadingListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->showSearchView()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$7;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$7;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2300(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$7;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->searchReadingListItem(Z)V

    return-void
.end method
