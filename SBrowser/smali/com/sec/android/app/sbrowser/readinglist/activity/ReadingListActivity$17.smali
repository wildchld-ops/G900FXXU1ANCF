.class Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$17;
.super Ljava/lang/Object;
.source "ReadingListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$17;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$17;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$17;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$17;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setSelection(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$17;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$17;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setSelection(Z)V

    goto :goto_0
.end method
