.class Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$10;
.super Ljava/lang/Object;
.source "ReadingListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$10;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$10;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2300(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$10;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSeachEditTextData:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2300(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$10;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    const v4, 0x7f0a01e5

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$10;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    const v4, 0x7f0a01e6

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-lez v2, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$10;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->searchReadingListItem(Z)V

    :cond_2
    return-void

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    if-eqz v1, :cond_1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
