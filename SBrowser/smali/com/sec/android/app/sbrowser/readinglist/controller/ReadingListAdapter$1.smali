.class Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$1;
.super Ljava/lang/Object;
.source "ReadingListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;Landroid/widget/CheckBox;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$1;->val$checkBox:Landroid/widget/CheckBox;

    iput p3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$1;->val$pos:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$1;->val$pos:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->updateSpinner(ZI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter$1;->val$pos:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->updateSpinner(ZI)V

    goto :goto_0
.end method
